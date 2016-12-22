
#include <iostream>
#include <cstdio>
#include <unistd.h>

#include "network.h"
#include "common.h"
#include "player.h"


/****************************************************
 *
 * Construct a new audio player
 *
 ****************************************************/
AudioMSGPlayer::AudioMSGPlayer()
{
    // create audio data buffer
    buffer = static_cast<void*>(new unsigned char[PACKET_SIZE]);
    count = 0;
    bytes = 0;
    fileRet = -1;
    eom = false;
    delay = 8000;
}

/****************************************************
 *
 * Audio player's destructor
 *
 ****************************************************/
AudioMSGPlayer::~AudioMSGPlayer()
{
    delete static_cast<unsigned char*>(buffer);
}

/****************************************************
 *
 * Playback an audio message
 *
 * \args reference to a udpsocket, file pointer
 * \return number of bytes played back
 ****************************************************/
int AudioMSGPlayer::playAudioMessage(sf::UdpSocket &socket, FILE *file,
                                            const sf::IpAddress &remoteAddr,
                                            const unsigned short &remotePort)
{
    count = 0;
    bytes = 0;
    eom = false;

    // try to send beginning of message packet
    sendSpecialPacket(reinterpret_cast<const void*>(BEGIN_MESSAGE), BOM_SIZE,
                                            socket, remoteAddr, remotePort);
    usleep(1000); // pause before streaming audio

    do // continue to send audio data until EOF or error
    {
        fileRet = fread(buffer, 1, PACKET_SIZE, file);
        ++count;
        if (fileRet < 1)
        {
            // try to send end of message packet
            sendSpecialPacket(reinterpret_cast<const void*>(END_MESSAGE),
                                    EOM_SIZE, socket, remoteAddr, remotePort);
            eom = true;
        }
        else
        {
            // send audio stream to remote client
            status = socket.send(buffer, fileRet, remoteAddr, remotePort);
            if (status != sf::Socket::Done)
            {
                std::cout << "Error occurred sending packet #" << count
                                                                << std::endl;
            }
            else
            {
                bytes += fileRet;
            }
            usleep(delay); // pause before sending next packet
        }
    } while (!eom);
    return bytes;
}

/****************************************************
 *
 * Set the number of usecs to delay between sending
 * packets.
 *
 * \args unsigned long usecs
 * \return none
 ****************************************************/
void AudioMSGPlayer::setDelay(unsigned long usecs)
{
    this->delay = usecs;
}
