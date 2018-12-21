FROM ubuntu:16.04

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install fonts-ipafont fonts-ipaexfont texlive texlive-formats-extra texlive-science texlive-lang-japanese latexmk vim -y && \
    apt-get purge *-doc* *chinese* *korean* *thai* -y && \
    apt-get clean -y && \
    apt-get autoremove -y && \
    apt-get autoclean -y && \
    mkdir /workdir

COPY .latexmkrc /root

WORKDIR /workdir

CMD ["bash"]
