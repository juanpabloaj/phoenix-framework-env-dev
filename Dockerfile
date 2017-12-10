FROM marcelocg/phoenix

RUN apt-get update
RUN apt-get install -y sudo
RUN apt-get install -y postgresql-client
RUN apt-get install -y vim

RUN useradd -m phoe && adduser phoe sudo
RUN echo "phoe ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/phoe
RUN chmod 0440 /etc/sudoers.d/phoe

USER phoe
WORKDIR /home/phoe
