FROM planitar/dev-base

USER root
WORKDIR /

RUN apt-get install -y nodejs npm && \
    ln -sf /usr/bin/nodejs /usr/bin/node && \
    apt-get -y clean
