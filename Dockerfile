FROM mhart/alpine-node:0.10.48
ENV \
  LC_CTYPE="en_US.utf8"
# Install commands.
# convert in imagemagick and librsvg needed by something
# font-jis-misc needed by Japanese
# gcc and libc-dev libffi-dev needed by gem install ffi
# nproc in coreutils and GNU xargs in findutils needed by UglifyJS
# ruby, ruby-dev, and ruby-io-console needed by gem
# ssh in openssh-client needed by git
RUN apk --no-cache --update add \
  coreutils \
  findutils \
  font-jis-misc \
  gcc \
  git \
  imagemagick \
  libc-dev \
  libffi-dev \
  librsvg \
  make \
  openssh-client \
  py-pip \
  python \
  python-dev \
  rsync \
  ruby \
  ruby-dev \
  ruby-io-console \
  sudo \
  zip \
  ;
RUN echo 'gem: --no-rdoc --no-ri' > /etc/gemrc \
  && gem install \
  bundler \
  ffi \
  && rm -r /root/.gem \
  && find / -name '*.gem' | xargs rm
RUN curl -s https://bootstrap.pypa.io/get-pip.py | python
