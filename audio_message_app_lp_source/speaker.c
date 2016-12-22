//*****************************************************************************
// speaker.c
//
// LINE OUT (Speaker Operation)
//
// Copyright (C) 2014 Texas Instruments Incorporated - http://www.ti.com/ 
// 
// 
//  Redistribution and use in source and binary forms, with or without 
//  modification, are permitted provided that the following conditions 
//  are met:
//
//    Redistributions of source code must retain the above copyright 
//    notice, this list of conditions and the following disclaimer.
//
//    Redistributions in binary form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in the 
//    documentation and/or other materials provided with the   
//    distribution.
//
//    Neither the name of Texas Instruments Incorporated nor the names of
//    its contributors may be used to endorse or promote products derived
//    from this software without specific prior written permission.
//
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS 
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT 
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT 
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, 
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT 
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT 
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE 
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//*****************************************************************************
// Hardware & driverlib library includes
#include "rom.h"
#include "rom_map.h"
#include "utils.h"
#include "hw_ints.h"

// simplelink include
#include "simplelink.h"

// common interface includes
#include "common.h"
#include "uart_if.h"
#include "gpio_if.h"
// Demo app includes
#include "network.h"
#include "circ_buff.h"

//*****************************************************************************
//                 GLOBAL VARIABLES -- Start
//*****************************************************************************
extern tUDPSocket g_UdpSock;
//int g_iRetVal = 0;
//extern unsigned long  g_ulStatus;
extern volatile unsigned char g_ucSpkrStartFlag;
extern unsigned char g_loopback;
unsigned char speaker_data[2*PACKET_SIZE];

#ifdef DEBUG
unsigned long g_ulBytesPlayed = 0;
unsigned long g_ulCount = 0;
#endif

extern tCircularBuffer *pPlayBuffer;
extern tCircularBuffer *pRecordBuffer;

// forward declaration of required routines
unsigned char isMessage(void *msg, unsigned long len, void *tMsg, unsigned long tMsgLen);
void SpeakerControl(void* pValue);
long receiveMessage(void);

//*****************************************************************************
//                 GLOBAL VARIABLES -- Used by receiveMessage()
//*****************************************************************************
long lRetVal = -1;
fd_set readfds,writefds;
struct SlTimeval_t tv;

//*****************************************************************************
//                 GLOBAL VARIABLES -- End
//*****************************************************************************

//*****************************************************************************
//! Print Packet Content Routine
//!
//! \param None
//!
//! \return None
//*****************************************************************************
#ifdef DEBUG_PACKETS
void printContent()
{
	long lindex;
	for (lindex = 0; lindex < PACKET_SIZE; lindex++)
	{
		UART_PRINT("%d ", (int) (speaker_data[lindex]));
	}
}
#endif

//*****************************************************************************
//
//! Speaker Routine 
//!
//! \param pvParameters     Parameters to the task's entry function
//!
//! \return None
//
//*****************************************************************************
void Speaker(void *pvParameters)
{
   long lRetVal = -1;

    while(1)
    {
        while(g_ucSpkrStartFlag)
        {
            if(!g_loopback)
            {
            	// get the next message
            	lRetVal = receiveMessage();

            	// play audio if we received data
            	if (lRetVal <= 0)
            	{
					continue;
            	}
            	else if(isMessage(speaker_data, lRetVal, BEGIN_MESSAGE, BOM_SIZE))
            	{
#ifdef DEBUG_PACKETS
            		UART_PRINT("Received BOM packet\n\r");
#endif
            	}
            	else if(isMessage(speaker_data, lRetVal, END_MESSAGE, EOM_SIZE))
				{
#ifdef DEBUG_PACKETS
            		UART_PRINT("Received EOM packet after %d packets on port %d\n\r", \
            									g_ulCount, g_UdpSock.Client.sin_port);
#endif
            		SpeakerControl(0); // turn off speaker
				}
            	else
				{
					lRetVal = FillBuffer(pPlayBuffer, (unsigned char*)speaker_data,\
										  	  	  	  	  	  	  	  lRetVal);
					if(lRetVal < 0)
					{
						UART_PRINT("Unable to fill buffer");
						MAP_UtilsDelay(50);
					}
					else
					{
#ifdef DEBUG_PACKETS
						UART_PRINT("Successfully wrote %d bytes to play buffer\n\r",lRetVal);
#endif
#ifdef DEBUG
						g_ulBytesPlayed += lRetVal;
						g_ulCount++;
#endif
					}
				}
            }
            else
            {
            	MAP_UtilsDelay(50);
            }
        }
        MAP_UtilsDelay(1000);
    }
}

//*****************************************************************************
//! Check if Message Matches Target Message Routine
//!
//! \param received message, message length, target message, target length
//!
//! \return 1 if message is target message, 0 otherwise
//*****************************************************************************
unsigned char isMessage(void *msg, unsigned long len, void *tMsg, unsigned long tMsgLen)
{
	long i;

	if (len != tMsgLen)
	{
#ifdef DEBUG_PACKETS
		UART_PRINT("\n\rMessage size %d does not match target message size %d\n\r", len, tMsgLen);
#endif
		return 0;
	}

	for (i = 0; i < len; i++)
	{
		if (*(((unsigned char*) msg) + i) != *(((unsigned char*) tMsg) + i))
		{
#ifdef DEBUG_PACKETS
			UART_PRINT("\n\rMessage %s does not match target message %s\n\r", (char*)msg, (char*)tMsg);
#endif
			return 0;
		}
	}

#ifdef DEBUG_PACKETS
	UART_PRINT("\n\rMessage %s matches target message %s\n\r", (char*)msg, (char*)tMsg);
#endif
	return 1;
}

//*****************************************************************************
//! Receive Next UDP Packet Routine
//!
//! \param received message, message length, target message, target length
//!
//! \return 1 if message is target message, 0 otherwise
//*****************************************************************************
long receiveMessage()
{
	FD_ZERO(&readfds); // clear read and write file descriptors
	FD_ZERO(&writefds);
	FD_SET(g_UdpSock.iSockDesc,&readfds); // set read and write file descriptors to UDP socket
	FD_SET(g_UdpSock.iSockDesc,&writefds);

	tv.tv_sec = 0; // timeout
	tv.tv_usec = 2000000; // 2 seconds
	int rv = select(g_UdpSock.iSockDesc, &readfds, NULL, NULL, &tv); // monitor read socket
	if(rv <= 0)
	{
		return -1;
	}
	// check if socket descriptor is set
	if (FD_ISSET(g_UdpSock.iSockDesc, &readfds))
	{
		lRetVal = recvfrom(g_UdpSock.iSockDesc, (char*)(speaker_data),\
							  2*PACKET_SIZE, 0,\
							  (struct sockaddr *)&(g_UdpSock.Client),\
							  (SlSocklen_t*)&(g_UdpSock.iClientLength));
	}
#ifdef DEBUG
	if (lRetVal > 0)
	{
		g_ulCount++;
	}
#endif
	return lRetVal;
}
