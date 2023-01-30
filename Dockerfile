FROM ubuntu:22.04
RUN apt update && && apt install git -y && git clone https://github.com/gothinkster/angular-realworld-example-app.git && cd angular-realworld-example-app
RUN apt install curl -y && curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash && source ~/.bashrc && nvm install 16.13.0
RUN npm install -g @angular/cli && npm install
EXPOSE 4200
CMD ["ng","serve","--host","0.0.0.0"]