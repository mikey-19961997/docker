FROM ubuntu:22.04
RUN apt update && apt install openjdk-11-jdk -y
EXPOSE 8080
CMD ["java", "-jar", "spring-petclinic-2.4.2.jar"]