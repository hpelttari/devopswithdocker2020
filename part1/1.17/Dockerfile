FROM ubuntu:bionic
RUN apt-get update && apt-get upgrade -y
RUN apt-get install python3.7 -y && apt-get install python3-pip -y \
&& apt-get install python3-venv -y
RUN pip3 install numpy pandas sklearn matplotlib
