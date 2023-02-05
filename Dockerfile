FROM node:16
RUN git clone https://github.com/simonplend/example-app-nodejs-backend-react-frontend.git && \
    cd example-app-nodejs-backend-react-frontend/ && \
    npm install && \
    npm run build
EXPOSE 3000
WORKDIR /example-app-nodejs-backend-react-frontend
CMD ["npm","start","-h","0.0.0.0"]