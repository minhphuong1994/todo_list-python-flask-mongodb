# FROM ubuntu:18.04

# MAINTAINER phuong "phuong.ly.pixel3@gmail.com"

# RUN apt-get update -y &&\
#     apt-get install -y python3.8 python3-pip

# RUN mkdir -p /home/app

# COPY ./requirements.txt /home/app/requirements.txt

# RUN pip3 install -r /home/app/requirements.txt

# COPY ./core_files /home/app

# CMD ["python3","/home/app/main.py"]  


FROM python:3.8.10-buster

MAINTAINER phuong "phuong.ly.pixel3@gmail.com"

RUN mkdir -p /home/app

COPY ./requirements.txt /home/app/requirements.txt

RUN pip install -r /home/app/requirements.txt

COPY . /home/app

CMD ["python","/home/app/main.py"]  