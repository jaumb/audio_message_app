//*****************************************************************************
// Microphone.c
//
// Line IN (Microphone interface)
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
#include "audiocodec.h"

//*****************************************************************************
//                 GLOBAL VARIABLES -- Start
//*****************************************************************************

extern tUDPSocket g_UdpSock;
extern volatile unsigned char g_ucMicStartFlag;
extern char g_loopback;
unsigned long g_ulsequence;
unsigned char g_pucBuffer[PACKET_SIZE];

extern tCircularBuffer *pPlayBuffer;
extern tCircularBuffer *pRecordBuffer;

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
	UART_PRINT("Packet #: %d--------------------\n\r",g_ulsequence);
	for (lindex = 0; lindex < PACKET_SIZE; lindex++)
	{
		UART_PRINT("%d ", (int) (g_pucBuffer[lindex]));
	}
}
#endif

//*****************************************************************************
//
//! Microphone Routine 
//!
//! \param pvParameters     Parameters to the task's entry function
//!
//! \return None
//
//*****************************************************************************

void Microphone(void *pvParameters)
{
	long lRetVal = -1;

    while(1)
    {
        while(g_ucMicStartFlag)
        {
            unsigned int uiBufferFilled = 0;
            uiBufferFilled = GetBufferSize(pRecordBuffer);
            if(uiBufferFilled >= (2*PACKET_SIZE))
            {
                if(!g_loopback)
                {
                	memcpy(g_pucBuffer, pRecordBuffer->pucReadPtr, PACKET_SIZE);

                	lRetVal = sendto(g_UdpSock.iSockDesc, \
									(void*)(g_pucBuffer),PACKET_SIZE, \
									0,(struct sockaddr*)&(g_UdpSock.Client), \
									sizeof(g_UdpSock.Client));
#ifdef DEBUG_PACKETS
                	UART_PRINT("\n\rAudio data sent %d bytes (should be %d)\n\r", lRetVal, PACKET_SIZE);
#endif
					if(lRetVal < 0)
					{
						UART_PRINT("Unable to send data\n\r");
						MAP_UtilsDelay(50);
					}
					else
					{
						UpdateReadPtr(pRecordBuffer, PACKET_SIZE);
						g_ulsequence++;
#ifdef DEBUG_PACKETS
						printContent();
#endif
					}
                }
                else
                {
                	lRetVal = FillBuffer(pPlayBuffer, \
										  (unsigned char*)(pRecordBuffer->pucReadPtr), \
										  PACKET_SIZE);
					if(lRetVal < 0)
					{
						UART_PRINT("Unable to fill buffer\n\r");
						MAP_UtilsDelay(50);
					}
                }
            }
        }      
        MAP_UtilsDelay(1000);
    }
}

//*****************************************************************************
//! Send Special Message Routine
//!
//! \param message, length of message
//!
//! \return None
//*****************************************************************************
void sendMessage(void *msg, unsigned int len)
{
	long lRetVal = -1;
	int lindex;

	for (lindex = 0; lRetVal < 0 && lindex < RETRIES; lindex++)
	{
		lRetVal = sendto(g_UdpSock.iSockDesc, \
							msg, len, \
							0,(struct sockaddr*)&(g_UdpSock.Client), \
							sizeof(g_UdpSock.Client));
	}

	// abort if we can't send the special message
	if(lRetVal < 0)
	{
		UART_PRINT("Failed to send special message: %s\n\r", (char*)msg);
		LOOP_FOREVER();
	}
	else
	{
#ifdef DEBUG
		UART_PRINT("\n\rSent %s message with %d bytes (should be %d)\n\r", (char*)msg, lRetVal, len);
#endif
	}
}
