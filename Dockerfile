#Based on https://github.com/cherdt/docker-nltk-chatbot.git
FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y gcc
RUN apt-get install -y python3
RUN apt-get install -y python3-dev
RUN apt-get install -y python3-pip
RUN pip3 install Flask
RUN pip3 install flask-cors
RUN pip3 install nltk
RUN pip3 install pyyaml requests uwsgi

COPY chat.html ./
COPY chatbot.py ./

CMD ["/usr/local/bin/uwsgi", "--http", ":9500", "--manage-script-name", "--mount", "/=chatbot:app"]
