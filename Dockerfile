FROM maven:3.8.6-openjdk-18 as build
RUN git clone https://github.com/spring-projects/spring-petclinic.git && \
    cd spring-petclinic && \
    mvn package