FROM alpine
RUN apk update
RUN apk add openjdk8
ARG mongo_db_connection_string
ENV AZURE_MONGO_DB=$mongo_db_connection_string
COPY artifact/myJar.jar /opt/spring-cloud/lib/
CMD java -jar /opt/spring-cloud/lib/myJar.jar
EXPOSE 8080
