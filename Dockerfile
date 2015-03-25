MAINTAINER Robert Stern <Robert.Stern@gmail.com>
ENV http_proxy = "http://192.168.20.55:3128"
ENV https_proxy = "http://192.168.20.55:3128"
RUN apt-get update && apt-get upgrade -y && apt-get install -y libarchive-dev pkg-config zip
RUN git clone --depth 1 https://github.com/google/bazel.git /bazel
RUN /bazel/compile.sh

