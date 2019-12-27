FROM debian:buster

RUN apt-get update -q && \
    apt-get install -y -q --no-install-recommends \
        autojump \
        fd-find \
        git \
        fzf \
        silversearcher-ag \
        tmux

RUN mkdir -p /root/.local/share/autojump/
RUN mkdir -p /root/cats/siamese-mostpopular
RUN mkdir -p /root/cats/siamese-lesspopular
RUN mkdir -p /root/cats/maine-coon
RUN mkdir -p /root/work

COPY .tmux.conf /root
COPY .bashrc /root
COPY .git-prompt.sh /root
COPY autojump.txt /root/.local/share/autojump/
