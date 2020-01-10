FROM debian:buster

RUN apt-get update -q && \
    apt-get install -y -q --no-install-recommends \
        autojump \
        fd-find \
        fzf \
        git \
        htop \
        less \
        silversearcher-ag \
        telnet \
        tmux \
        vim \
        wget

WORKDIR /root
RUN git config --global http.sslverify false
RUN git clone https://github.com/fredhutchio/fredhutch.io.git

RUN wget --no-check-certificate https://raw.githubusercontent.com/junegunn/fzf/master/shell/key-bindings.bash -O .fzf.bash

RUN mkdir -p /root/.local/share/autojump/
RUN mkdir -p /root/cats/siamese-mostpopular
RUN mkdir -p /root/cats/siamese-lesspopular
RUN mkdir -p /root/cats/bengal
RUN mkdir -p /root/work

COPY .tmux.conf /root
COPY .bashrc /root
COPY .git-prompt.sh /root
COPY autojump.txt /root/.local/share/autojump/
