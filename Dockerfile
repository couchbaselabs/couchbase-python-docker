FROM pypy:2

# Set-up libcouchbase
RUN apt-get update && apt-get -y install libev4

RUN wget http://packages.couchbase.com/clients/c/libcouchbase-2.5.4_wheezy_amd64.tar
RUN tar xf libcouchbase-2.5.4_wheezy_amd64.tar
RUN dpkg -i libcouchbase-2.5.4_wheezy_amd64/*.deb

RUN pip install couchbase
RUN pip install git+https://github.com/couchbaselabs/couchbase-python-cffi.git
