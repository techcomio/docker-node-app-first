# DOCKER-VERSION 1.9.1
FROM    ubuntu:latest

# make sure apt is up to date
RUN     apt-get update
RUN     apt-get install -y nodejs nodejs-legacy npm

# Bundle app source
ADD . /src
# Install app dependencies
RUN cd /src; npm install

EXPOSE  8080
CMD ["node", "/src/app.js"]
