FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Tokyo
ENV LANG=C.UTF-8

RUN apt-get update

RUN apt-get update && apt-get install -y \
    git \
    texlive-lang-japanese \
    texlive-luatex \
    texlive-latex-recommended \
    texlive-latex-extra \
    latexmk \
    biber \
    texlive-extra-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY ./lab /usr/share/texlive/texmf-dist/tex/lualatex/lab

RUN mktexlsr
