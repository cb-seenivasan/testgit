FROM openjdk:8-jdk-alpine
WORKDIR /tmp/workdir
COPY ./ ./
RUN ./gradlew clean build

FROM openjdk:8-jdk-alpine
COPY --from=0 /tmp/workdir/build/libs/hello-word-0.0.1-SNAPSHOT.jar hello-word-0.0.1-SNAPSHOT.jar
CMD java -jar hello-word-0.0.1-SNAPSHOT.jar

