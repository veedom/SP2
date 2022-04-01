FROM ubuntu
RUN apt-get update
RUN apt install gcc gdb gcc-multilib nano -y
COPY try.s .
RUN gcc -m32 try.s -o trys
CMD ./trys
