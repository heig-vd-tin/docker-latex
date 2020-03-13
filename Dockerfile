FROM ubuntu:19.04

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y make
RUN apt-get install -y git
RUN apt-get install -y wget

# Texlive
RUN apt-get install -y texlive-xetex
RUN apt-get install -y texlive-lang-french
RUN apt-get install -y texlive-fonts-extra
RUN apt-get install -y texlive-science
RUN apt-get install -y latexmk

# Python Sphinx
RUN apt-get install -y librsvg2-bin
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN pip3 install -U docutils==0.15.2
RUN pip3 install sphinx==2.2.0
RUN pip3 install sphinxcontrib-svg2pdfconverter
RUN pip3 install sphinx-heigvd-theme==0.5.2

ENV USER=latex

# Clear cache
RUN rm -rf /var/lib/apt/lists/*

