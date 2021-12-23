# syntax = edrevo/dockerfile-plus

FROM ubuntu:focal

ENV \
    USERNAME=node \
    USER_ID=1000 \
    GROUP_ID=1000

# Discourage root access
RUN groupadd -g ${GROUP_ID} ${USERNAME}
RUN useradd -u ${USER_ID} -g ${USERNAME} -s /bin/zsh -m -d /home/${USERNAME} ${USERNAME}
RUN usermod -aG sudo ${USERNAME}
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER ${USERNAME}

RUN ["bash", "-c", "echo 'Node is up!'"]
