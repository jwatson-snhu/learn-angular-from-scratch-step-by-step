# using Node v10
FROM node:10

# Create app directory
WORKDIR /usr/src/lafs

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install -g @angular/cli 
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 4200
CMD [ "ng", "serve" ]