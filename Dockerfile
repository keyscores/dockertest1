FROM ubuntu:14.04
MAINTAINER Yatin Patel

# Install g++, swig and boost, required to build QuantLib
RUN apt-get update \
 && apt-get install -y -q \
    curl \
    g++ \
    swig \
    libboost-all-dev

# QuantLib (with Python, PyQL)
RUN apt-get install -y libquantlib0 libquantlib0-dev \
  && apt-get autoremove -y \
  && apt-get clean -y

# Download and extract QuantLib-SWIG
RUN cd /root \
  && curl -O -L http://sourceforge.net/projects/quantlib/files/QuantLib/1.4/other%20languages/QuantLib-SWIG-1.4.tar.gz \
  && tar -zxvf QuantLib-SWIG-1.4.tar.gz \
  && rm QuantLib-SWIG-1.4.* \
  && cd QuantLib-SWIG-1.4/Python \
  && python setup.py wrap \
  && python setup.py build \
  && python setup.py install
