FROM alpine
RUN apk update
RUN apk add openjdk8-jre
ARG AZURE_MONGO_DB
ENV AZURE_MONGO_DB=$AZURE_MONGO_DB
COPY artifact/myJar.jar /opt/spring-cloud/lib/
CMD java -jar /opt/spring-cloud/lib/myJar.jar
EXPOSE 8080
