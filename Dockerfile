FROM alpine
RUN apk update
RUN apk add openjdk8
COPY target/mongo-cosmodb-test-0.0.1-SNAPSHOT.jar /opt/spring-cloud/lib/
CMD java -jar /opt/spring-cloud/lib/mongo-cosmodb-test-0.0.1-SNAPSHOT.jar