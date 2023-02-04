FROM maven:3.8.6-openjdk-18 as build
RUN git clone https://github.com/spring-projects/spring-petclinic.git && \
    cd spring-petclinic && \
    mvn package

FROM openjdk-18
COPY --from=build /spring-petclinic/target/spring-petclinic-3.0.0-SNAPSHOT.jar /spring-petclinic-3.0.0-SNAPSHOT.jar
EXPOSE 8080
CMD ["java","-jar","/spring-petclinic-3.0.0-SNAPSHOT.jar"]
