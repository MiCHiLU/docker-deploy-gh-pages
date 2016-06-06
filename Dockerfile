FROM mhart/alpine-node:0.10.45
ENV \
  LC_CTYPE="en_US.utf8"
# Install commands.
# ruby, ruby-dev, and ruby-io-console needed by gem
# gcc and libc-dev libffi-dev needed by gem install ffi
RUN apk --no-cache --update add \
  gcc \
  git \
  libc-dev \
  libffi-dev \
  make \
  python \
  python-dev \
  rsync \
  ruby \
  ruby-dev \
  ruby-io-console \
  sudo \
  ;
RUN echo 'gem: --no-rdoc --no-ri' > /etc/gemrc \
  && gem install \
  bundler \
  ffi \
  && rm -r /root/.gem \
  && find / -name '*.gem' | xargs rm
RUN curl -s https://bootstrap.pypa.io/get-pip.py | python
