FROM michilu/fedora-zero
ENV \
  LC_CTYPE="en_US.utf8"
RUN yum install -y \
  findutils \
  git \
  java-1.8.0-openjdk-headless \
  make \
  npm \
  ruby-devel \
  rubygem-bundler \
  sudo \
  tar \
  which \
  && yum clean all
