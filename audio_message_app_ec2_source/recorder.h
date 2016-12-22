
/************************************************
 * Audio Message Recorder Class
 ***********************************************/

#ifndef AUDIO_MSG_RECORDER
#define AUDIO_MSG_RECORDER

#include <SFML/Network/UdpSocket.hpp>
#include <SFML/Network/Socket.hpp>
#include <SFML/Network/IpAddress.hpp>

class AudioMSGRecorder
{

    public:
        AudioMSGRecorder();
        ~AudioMSGRecorder();
        int recordAudioMessage(sf::UdpSocket&, FILE*,
                                sf::IpAddress&, unsigned short&);

    private:
        void *buffer;
        sf::Socket::Status status;
        unsigned long count;
        unsigned long bytes;
        std::size_t received;
        std::size_t fileRet;
        bool eom;

};


#endif
