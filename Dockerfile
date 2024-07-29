FROM node:18.16.0-alpine3.17
WORKDIR /usr/src/
COPY src/package.json src/package-lock.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD [ "npm", "start"]
