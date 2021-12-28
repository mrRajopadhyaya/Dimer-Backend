FROM node:14

#create app directory 
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

CMD [ "npm", "run", "dev" ]

EXPOSE 5000
