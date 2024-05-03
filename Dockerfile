FROM node:alpine

#Set WD in the docker container
WORKDIR /src

#copy package.json from your local system to the Container 
COPY ./src/package.json .

#Install node dependencies
RUN npm install

#Copy everything from ./src/. on local to the WORKDIR
COPY ./src/ .

#expose port 3000 on the conatiner
EXPOSE 3000

CMD ["node", "server.js"]
