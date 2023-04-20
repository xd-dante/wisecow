## As this is interview so i didnt check multiple image but ideally prefered alpine unless we required some debian library 
FROM ubuntu:latest        

RUN apt-get update && apt-get install -y \ 
    fortune-mod \
    cowsay \
    && rm -rf /var/lib/apt/lists/*

ENV PATH="$PATH:/usr/games"

WORKDIR /app

COPY wisecow.sh .

RUN chmod +x wisecow.sh

EXPOSE 4499

CMD ["bash","wisecow.sh"]