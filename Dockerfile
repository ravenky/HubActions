#FROM openjdk:8-jre-alpine

#EXPOSE 8080

#COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/
#WORKDIR /usr/app

#ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]


FROM openjdk:8-jre-alpine

EXPOSE 8080

ARG JAR_FILE=build/libs/*.jar

COPY ${JAR_FILE} *.jar /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "*.jar"]
