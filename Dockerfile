FROM ubuntu:latest

RUN apt-get update && apt-get install -y \ 
    fortune-mod \
    cowsay \
    iputils-ping \
    netcat \
    && rm -rf /var/lib/apt/lists/*

ENV PATH="$PATH:/usr/games"

WORKDIR /app

COPY wisecow.sh .

RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["bash","wisecow.sh"]