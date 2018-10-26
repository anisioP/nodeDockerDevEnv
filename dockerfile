FROM node:alpine

MAINTAINER andrepinheiro.projectos@gmail.com

WORKDIR /app

#Instalar as dependencias, e preciso copiar o lock file tb
COPY package*.json ./

RUN npm install
#intalar as dependencias

#copiar o codigo da app
COPY . .

#dar start em tudo
CMD ["npm", "start"]