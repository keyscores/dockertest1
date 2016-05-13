FROM ubuntu

RUN apt-get update && apt-get install -y tree

RUN git clone ${MYGHREPO}
