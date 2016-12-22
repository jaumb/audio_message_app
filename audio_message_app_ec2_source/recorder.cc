
#include <iostream>
#include <cstdio>

#include "network.h"
#include "common.h"
#include "recorder.h"


/****************************************************
 *
 * Construct a new recorder
 *
 ****************************************************/
AudioMSGRecorder::AudioMSGRecorder()
{
    // create audio data buffer
    buffer = static_cast<void*>(new unsigned char[PACKET_SIZE]);
    count = 0;
    bytes = 0;
    received = 0;
    fileRet = -1;
    eom = false;
}

/****************************************************
 *
 * Recorder's destructor
 *
 ****************************************************/
AudioMSGRecorder::~AudioMSGRecorder()
{
    delete static_cast<unsigned char*>(buffer);
}

/****************************************************
 *
 * Record a new audio message
 *
 * \args reference to a udpsocket, file pointer
 * \return number of bytes recorded
 ****************************************************/
int AudioMSGRecorder::recordAudioMessage(sf::UdpSocket &socket,
        FILE *file, sf::IpAddress &remoteAddr, unsigned short &remotePort)
{
    count = 0;
    bytes = 0;
    eom = false;

    do // continue to write audio data until EOM or error
    {
        status = socket.receive(buffer, PACKET_SIZE,
                                        received, remoteAddr, remotePort);
        ++count;
        if (status != sf::Socket::Done)
        {
            std::cout << "Error occurred receiving packet #" << count
                                                            << std::endl;
        }
        else if (isSpecialPacket(buffer, received,
                        reinterpret_cast<const unsigned char*>(END_MESSAGE),
                                                                EOM_SIZE))
        {
            eom = true;
        }
        else if (isSpecialPacket(buffer, received,
                    reinterpret_cast<const unsigned char*>(BEGIN_MESSAGE),
                    BOM_SIZE) || isSpecialPacket(buffer, received,
                    reinterpret_cast<const unsigned char*>(PLYBK_MESSAGE),
                                                             PLYBK_SIZE))
        {
            // ignore other messages while recording
        }
        else
        {
            // write audio stream to file
            fileRet = fwrite(buffer, 1, received, file);
            if (fileRet < 1)
            {
                std::cout << "Error occurred writing to file ";
                std::cout << "after " << count << " packets";
                std::cout << " and " << bytes << " bytes" << std::endl;
                return bytes;
            }
            bytes += received;
        }
    } while (!eom);
    return bytes;
}
