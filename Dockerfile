FROM planitar/dev-base

USER root
WORKDIR /

# Install NodeJS 10
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install -y nodejs && \
    apt-get -y clean
