FROM node:12-alpine
WORKDIR /app
COPY package*.json ./
RUN npm i
RUN npm audit fix
RUN npm fund
COPY . .
CMD ["node", "./bin/www"]
EXPOSE 3000
