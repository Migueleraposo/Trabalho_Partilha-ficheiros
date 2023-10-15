FROM ubuntu:22.04
# Crie os diretórios home para os usuários
RUN mkdir -p /home/user1/pastausr1 /home/user2/pastausr2
# Crie os usuários
RUN useradd -ms /bin/bash user1
RUN useradd -ms /bin/bash user2

# Crie os arquivos nas pastas pessoais
RUN echo 'Olá user1' > /home/user1/pastausr1/texto.txt
RUN echo 'Olá user2' > /home/user2/pastausr2/texto.txt

# Dê permissões para que o user2 possa acessar o arquivo do user1
RUN chown user1:user1 /home/user1/pastausr1/texto.txt
RUN chmod 644 /home/user1/pastausr1/texto.txt
RUN usermod -aG user1 user2

# Defina o comando padrão para o contêiner
CMD ["/bin/bash"]