FROM ubuntu:16.04
LABEL vendor="nepalihackers"
RUN apt -y update
RUN apt install -y bsdmainutils
COPY saancho /usr/bin/saancho
RUN chmod +x /usr/bin/saancho
