
/************************************************
 * Header file for common routines.
 ***********************************************/

#include <SFML/Network/UdpSocket.hpp>
#include <SFML/Network/Socket.hpp>
#include <SFML/Network/IpAddress.hpp>

#include <cstdlib>

// helper function to check for special packet
bool isSpecialPacket(void *buffer, const std::size_t &size,
                    const unsigned char *msg, const std::size_t &msgSize);

// helper function to send a special packet
int sendSpecialPacket(const void *msg, const std::size_t &msgSize,
                                    sf::UdpSocket&, const sf::IpAddress&,
                                                    const unsigned short&);

// helper function to print the content of a buffer as unsigned chars
void printContent(const void *msg, const std::size_t &msgSize);
