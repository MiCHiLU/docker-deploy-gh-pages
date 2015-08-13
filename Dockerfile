FROM michilu/fedora-zero
RUN yum install -y \
  findutils \
  git \
  java-1.8.0-openjdk-headless \
  npm \
  && yum clean all
