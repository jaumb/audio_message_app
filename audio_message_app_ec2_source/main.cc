
#include <SFML/Network/Socket.hpp>
#include <SFML/Network/UdpSocket.hpp>
#include <SFML/Network/Packet.hpp>
#include <SFML/Network/IpAddress.hpp>

#include <iostream>
#include <cstdlib>
#include <cstdio>

#include "recorder.h"
#include "player.h"
#include "network.h"
#include "common.h"

/* main loop to handle audio recording and playback */
int main(int argc, char *argv[])
{
    AudioMSGPlayer player;
    AudioMSGRecorder recorder;
    FILE *file = NULL;
    sf::UdpSocket socket;
    sf::Socket::Status status;
    sf::IpAddress remoteAddr;
    unsigned short remotePort = 0;
    unsigned short localPort = AUDIO_PORT;
    unsigned long bytes = 0;
    std::size_t received = 0;
    std::size_t fileRet = -1;
    char audioFileName[] = "message.pcm";
    void *buffer = static_cast<void*>(new unsigned char[PACKET_SIZE]);

    // parse command line arguments, if any
    if (argc > 1) 
    {
        char *s(argv[1]);
        unsigned long usecs = static_cast<unsigned long>(strtol(s,NULL,10));
        if (usecs == 0)
        {
            std::cout << "Unable to convert " << s << " to integral value" <<
                                                                    std::endl;
        }
        else
        {
            player.setDelay(usecs);
        }
    }

    // bind the listener to a port
    if (socket.bind(localPort) != sf::Socket::Done)
    {
        std::cout << "Error occurred binding port" << std::endl;
        return -2;
    }
    std::cout << "Listening on port " << localPort << std::endl;

    // continuously process packets
    while (true)
    {
        status = socket.receive(buffer, PACKET_SIZE, received, remoteAddr,
                                                                remotePort);
        if (status != sf::Socket::Done)
        {
            std::cout << "Error occurred receiving packet" << std::endl;
        }
        else if (isSpecialPacket(buffer, received,
                    reinterpret_cast<const unsigned char*>(BEGIN_MESSAGE),
                                                                BOM_SIZE))
        {
            std::cout << "Recording a message from IP: " << remoteAddr <<
                                " and Port: " << remotePort << std::endl;
            // open file for recording
            file = fopen(audioFileName, "w");
            if (file == NULL)
            {
                std::cout << "Error occurred opening file for recording"
                                                            << std::endl;
                return -3;
            }

            // invoke recorder
            bytes = recorder.recordAudioMessage(socket, file, remoteAddr,
                                                                remotePort);
            std::cout << "Successfully wrote " << bytes << " bytes to file"
                                                                << std::endl;

            // close audio file
            fileRet = fclose(file);
            if (fileRet != 0)
            {
                std::cout << "Error occurred closing file after write"
                                                                << std::endl;
            }
        }
        else if (isSpecialPacket(buffer, received,
                    reinterpret_cast<const unsigned char*>(PLYBK_MESSAGE),
                                                             PLYBK_SIZE))
        {
            std::cout << "Playing a message for IP: " << remoteAddr <<
                                " and Port: " << remotePort << std::endl;
            // open file for reading
            file = fopen(audioFileName, "r");
            if (file == NULL)
            {
                // this should send the end of playback message
                std::cout << "Error occurred opening file for reading"
                                                            << std::endl;
                return -4;
            }

            // begin playback
            bytes = player.playAudioMessage(socket, file, remoteAddr,
                                                                remotePort);
            std::cout << "Successfully sent " << bytes << " bytes to client"
                                                    << std::endl << std::endl;

            // close audio file
            fileRet = fclose(file);
            if (fileRet != 0)
            {
                std::cout << "Error occurred closing file after read"
                                                                << std::endl;
            }
        }
        else if (isSpecialPacket(buffer, received,
                        reinterpret_cast<const unsigned char*>(END_MESSAGE),
                                                                EOM_SIZE))
        {
            // no need to process this message
        }
        else
        {
            // rogue message, do nothing
            std::cout << "Received rogue packet" << std::endl;
        }
    }
    delete static_cast<unsigned char*>(buffer);
    return bytes;
}
