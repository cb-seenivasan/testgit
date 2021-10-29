FROM openjdk:8-jdk-alpine

COPY hello-word-0.0.1-SNAPSHOT.jar hello-word-0.0.1-SNAPSHOT.jar

CMD java -jar hello-word-0.0.1-SNAPSHOT.jar

