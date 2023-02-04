FROM maven:3.8.6-openjdk-11 as build
RUN git clone https://github.com/spring-projects/spring-petclinic.git && cd spring-petclinic
RUN mvn package

FROM openjdk:11
COPY --from=build /spring-petclinic/target/spring-petclinic-2.7.3.jar /spring-petclinic-2.7.3.jar
EXPOSE 8080
CMD ["java","-jar","/spring-petclinic-2.7.3.jar"]