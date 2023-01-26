FROM node:18-alpine
LABEL project="nodejs"
LABEL author="mikey"
RUN apk add git
RUN git clone https://github.com/gothinkster/angular-realworld-example-app.git && cd /angular-realworld-example-app && npm install -g @angular/cli && npm install && apk add curl && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash && nvm install 14.20.0
EXPOSE 4200
WORKDIR /angular-realworld-example-app
CMD ["ng","serve","--host","0.0.0.0"]