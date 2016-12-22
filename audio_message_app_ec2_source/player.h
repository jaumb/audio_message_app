
/************************************************
 * Audio Message Player Class
 ***********************************************/

#ifndef AUDIO_MSG_PLAYER
#define AUDIO_MSG_PLAYER

#include <SFML/Network/UdpSocket.hpp>
#include <SFML/Network/Socket.hpp>
#include <SFML/Network/IpAddress.hpp>

class AudioMSGPlayer
{

    public:
        AudioMSGPlayer();
        ~AudioMSGPlayer();
        int playAudioMessage(sf::UdpSocket &, FILE*,
                            const sf::IpAddress&, const unsigned short&);
        void setDelay(unsigned long usecs);

    private:
        void *buffer;
        sf::Socket::Status status;
        unsigned long count;
        unsigned long bytes;
        std::size_t fileRet;
        bool eom;
        unsigned long delay;

};

#endif
