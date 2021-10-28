# pull official base image
FROM node:14.18.1

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
#COPY package.json ./
#COPY package-lock.json ./
#RUN npm install --silent
#RUN npm install react-scripts@3.4.1 -g --silent

# add app
COPY . ./
EXPOSE 3000 
# start app
#CMD ["HTTPS=true SSL_CRT_FILE=.cert/server.crt SSL_KEY_FILE=.cert/server.key","npm","start"]
CMD ["npm","start"]
