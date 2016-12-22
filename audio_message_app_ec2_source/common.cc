
/************************************************
 * Implementation of common routines.
 ***********************************************/

#include <iostream>
#include <stdio.h>

#include "common.h"
#include "network.h"

/*
 * Check for a special packet.
 */
bool isSpecialPacket(void *buffer, const std::size_t &buffSize,
                        const unsigned char *msg, const std::size_t &msgSize)
{
    if (buffSize != msgSize)
    {
        return false;
    }
    for (int i = 0; i < msgSize; ++i)
        if (*(reinterpret_cast<unsigned char*>(buffer) + i) != msg[i])
        {
            return false;
        }
    std::cout << "Received message: " << static_cast<const char*>(buffer) <<
                                                                std::endl;
    return true;
}

/*
 * Send a special packet.
 */
int sendSpecialPacket(const void *msg, const std::size_t &msgSize,
                        sf::UdpSocket &socket, const sf::IpAddress &remoteAddr,
                                            const unsigned short &remotePort)
{
    sf::Socket::Status status = sf::Socket::Error;

    for (int i = 0; status != sf::Socket::Done && i < RETRIES; ++i)
    {
        status = socket.send(msg, msgSize, remoteAddr, remotePort);
    }
    if (status != sf::Socket::Done)
    {
        std::cout << "Error occurred while sending message: " << std::endl;
        return 0;
    }
    else
    {
        std::cout << "Sent message: " << static_cast<const char*>(msg) <<
                                                                    std::endl;
    }
    return msgSize;
}

/*
 * Print the content of msg to stdout.
 */
void printContent(const void *msg, const std::size_t &msgSize)
{
    for (int i = 0; i < msgSize; ++i)
    {
        printf("%d ", *(static_cast<const unsigned char*>(msg) + i));
    }
}
