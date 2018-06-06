FROM openjdk:8-jre

RUN mkdir /opt/app

WORKDIR /opt/app

ENV JAR_FILE="spring-oauth2-demo-0.0.1-SNAPSHOT.jar"
ENV SPRING_APPLICATION_NAME="app"
ENV OAUTH2_CLIENT_ID=""
ENV OAUTH2_CLIENT_SECRET=""
ENV LOG_LEVEL="INFO"

CMD ["sh", "-c", "java -XX:TieredStopAtLevel=1 -Xverify:none -jar /opt/app/${JAR_FILE}"]
