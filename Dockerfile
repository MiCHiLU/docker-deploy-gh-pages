FROM michilu/fedora-zero
RUN yum install -y \
  findutils \
  git \
  java-1.8.0-openjdk-headless \
  npm \
  tar \
  which \
  && yum clean all
