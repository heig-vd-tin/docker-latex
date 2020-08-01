FROM ubuntu:focal
LABEL maintainer="Yves Chevallier <yves.chevallier@heig-vd.ch>"

ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -y make git wget

# Texlive
RUN apt-get install -y texlive-xetex
RUN apt-get install -y texlive-lang-french
RUN apt-get install -y texlive-fonts-extra
RUN apt-get install -y texlive-science
RUN apt-get install -y latexmk

# Python Sphinx
RUN apt-get install -y librsvg2-bin
RUN apt-get install -y python3 python3-pip

RUN pip3 install -U docutils==0.15.2
RUN pip3 install sphinx==2.2.0
RUN pip3 install sphinxcontrib-svg2pdfconverter
RUN pip3 install sphinx-heigvd-theme==0.5.2

# Update font cache
RUN fc-cache -fv

# Clear cache, man page and documentation
RUN apt-get clean -y
RUN rm -rf /var/lib/apt/lists/*
RUN rm -rf /usr/share/man
RUN rm -f /etc/ssh/ssh_host_*
RUN mkdir -p /usr/share/man
RUN find /usr/share/doc -depth -type f ! -name copyright -delete
RUN find /usr/share/doc -type f -name "*.pdf" -delete
RUN find /usr/share/doc -type f -name "*.gz" -delete
RUN find /usr/share/doc -type f -name "*.tex" -delete
RUN (find /usr/share/doc -type d -empty -delete || true)
RUN mkdir -p /usr/share/doc
RUN rm -rf /var/cache/apt/archives
RUN mkdir -p /var/cache/apt/archives
RUN rm -rf /tmp/* /var/tmp/*
RUN (find /usr/share/ -type f -empty -delete || true)
RUN (find /usr/share/ -type d -empty -delete || true)
RUN mkdir -p /usr/share/texmf/source
RUN mkdir -p /usr/share/texlive/texmf-dist/source

ENV USER=latex
