FROM ubuntu:22.04

RUN apt-get update && apt-get install -y sudo && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home/user1/pastausr1 /home/user2/pastausr2

RUN useradd -ms /bin/bash user1
RUN useradd -ms /bin/bash user2
#Criação de pastas
RUN echo 'Olá user1' > /home/user1/pastausr1
RUN echo 'Olá user2' > /home/user2/pastausr2
#Permissoes usuario
RUN chown -R user1:user1 /home/user1
RUN chown -R user2:user2 /home/user2
RUN chmod -R 770 /home/user1
RUN chmod -R 770 /home/user2
