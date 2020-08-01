FROM ubuntu:18.04
LABEL maintainer="Yves Chevallier <yves.chevallier@heig-vd.ch>"

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y make
RUN apt-get install -y texlive-xetex
RUN apt-get install -y texlive-lang-french
RUN apt-get install -y texlive-fonts-extra
RUN apt-get install -y latexmk

RUN rm -rf /var/lib/apt/lists/*
ENV USER=latex
