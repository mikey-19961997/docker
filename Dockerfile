FROM UBUNTU:22.04
RUN apt update && apt install nginx -y
EXPOSE 80
CMD ["service","nginx","start"]