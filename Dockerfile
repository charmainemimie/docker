#base image
FROM  node:23-alpine

#copy file or folder from machine to conytainer into the app dir
COPY package.json /app/
COPY src /app/

#go into the app dir / set default path
WORKDIR /app

#install dependencies
RUN npm install

#last instruction is to run the app
#there's only 1 CMD command and found at the end
CMD ["node", "server.js"]