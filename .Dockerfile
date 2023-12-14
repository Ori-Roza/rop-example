FROM ubuntu:latest

RUN apt-get -y update && apt-get -y install sudo

RUN sudo apt-get -y install gcc
RUN sudo apt-get -y install gdb
RUN sudo apt-get install -y gcc-multilib
RUN sudo apt-get install -y nano
RUN sudo apt-get install -y python3
RUN sudo apt-get install -y pip

RUN pip3 install ROPgadget

WORKDIR /home
COPY . .

RUN gcc -masm=intel -o ex source.c -m32 -fno-stack-protector -no-pie -g

# Use the 32-bit architecture (-m32) and disable stack protection (-fno-stack-protector).
# Disable position-independent executable (-no-pie) and include debugging information (-g).