FROM node:18-alpine
LABEL project="nodejs"
LABEL author="mikey"
RUN git clone https://github.com/gothinkster/angular-realworld-example-app.git && 
cd angular-realworld-example-app
EXPOSE 4200
WORKDIR /angular-realworld-example-app
CMD ["ng","serve","--host","0.0.0.0"]