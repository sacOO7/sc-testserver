FROM node:12.15.0-alpine
RUN npm install -g socketcluster
RUN cd /root && mkdir scserver
WORKDIR /root/scserver
RUN socketcluster create sc-embedded-app
WORKDIR /root/scserver/sc-embedded-app
EXPOSE 8000
CMD [ "node", "server.js" ]