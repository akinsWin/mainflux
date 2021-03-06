###
# Mainflux Dockerfile
###
# Set the base image to Node, onbuild variant: https://registry.hub.docker.com/_/node/

FROM node:0.10.38

RUN apt-get update -qq && apt-get install -y build-essential

RUN mkdir /src

###
# Installations
###
# Add Gulp globally

RUN npm install -g gulp
RUN npm install -g nodemon

# Finally, install all project Node modules
WORKDIR /src
ADD package.json /src/package.json
RUN npm install

EXPOSE 8080

###
# Run main command from entrypoint and parameters in CMD[]
###

CMD [""]

# Set default container command
ENTRYPOINT gulp
