# install swig
RUN apt-get install -y \
  autoconf \
  automake \
  bison \
  g++ \
  libpcre3-dev \
  libtool \
  yodl
RUN git clone https://github.com/swig/swig.git /.swig
RUN cd /.swig && ./autogen.sh && ./configure && make && make install
