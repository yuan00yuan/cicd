FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD ./test_springboot.jar app.jar
EXPOSE 1234
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","./app.jar"]
