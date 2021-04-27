# base image
FROM node:14-stretch

# crear carpeta donde se copiara el codigo de la aplicacion
WORKDIR /code 

# copiando el codigo de la aplicacion
COPY . /code

# instalando dependencias 
RUN npm i
RUN node app.js

# iniciando la aplicacion
CMD ng serve --host 0.0.0.0 --disable-host-check --port=3000