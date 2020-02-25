FROM alpine
RUN apk update
RUN apk add openjdk8
COPY artifact/myJar.jar /opt/spring-cloud/lib/
CMD java -jar /opt/spring-cloud/lib/myJar.jar
EXPOSE 8080
