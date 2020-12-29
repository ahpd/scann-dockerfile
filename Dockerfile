FROM ubuntu:18.04

# Compiler tools
RUN apt update && apt install -y software-properties-common

# Install python 3.7 and pip
RUN apt update && apt install -y python3.7
RUN apt update && apt install -y python3-pip

# Install scann
RUN python3.7 -m pip install python-dev-tools
RUN python3.7 -m pip install scann

ADD example.py /
CMD [ "python3.7", "example.py" ]
