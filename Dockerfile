FROM node:4.4.4

MAINTAINER ngthong <ngthorg@gmail.com>

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Install app global
RUN npm i -g babel-cli

# Bundle app source
COPY . /usr/src/app

EXPOSE  8080
CMD ["npm", "start"]
