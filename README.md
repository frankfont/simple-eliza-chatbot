Simple ELIZA Chatbot for Docker
===============================

Docker image to run the Python NLTK ELIZA chatbot in a web form from within a container.

CREDIT: This build is almost a complete copy from https://github.com/cherdt/docker-nltk-chatbot.git

HOW TO BUILD IMAGE
------------------

    git clone https://github.com/frankfont/simple-eliza-chatbot.git
    cd simple-eliza-chatbot
    docker build --rm -t local/simple-eliza-chatbot .

START CONTAINER
---------------

    docker run -d -p 9500:9500 local/simple-eliza-chatbot

USE CHATBOT
-----------
Interact using your browser at http://localhost:9500/chat/


