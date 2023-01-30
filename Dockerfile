FROM ubuntu:22.04
RUN apt update && apt install git -y && git clone https://github.com/gothinkster/angular-realworld-example-app.git
RUN cd angular-realworld-example-app && apt update && apt install curl -y && curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash && source ~/.bashrc && nvm install 16.13.0
RUN cd angular-realworld-example-app && npm install -g @angular/cli && npm install
EXPOSE 4200
WORKDIR /angular-realworld-example-app
CMD ["ng","serve","--host","0.0.0.0"]