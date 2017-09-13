FROM planitar/dev-base

USER root
WORKDIR /

# Grab Nodejs 8 and set it up
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get install -y nodejs && \
    apt-get -y clean
