FROM catthehacker/ubuntu:act-24.04

ENV PATH="$PATH:/root/.local/bin"

RUN  apt-get update && apt-get upgrade -y

RUN apt-get install -y pipx

RUN pipx install --include-deps ansible && pipx inject ansible netaddr