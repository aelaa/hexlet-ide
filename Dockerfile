FROM node:0.12.4-onbuild

ENV DEBIAN_FRONTEND noninteractive

RUN npm install -g bower gulp

RUN bower install --allow-root
RUN gulp prepublish
