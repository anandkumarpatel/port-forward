FROM node:4
RUN npm install -g mapport
CMD mapport 80 $REMOTE_HOST:$REMOTE_PORT
