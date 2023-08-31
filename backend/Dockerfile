FROM openjdk:17
VOLUME /tmp
EXPOSE 8080
ADD ./target/acervo-0.0.1-SNAPSHOT.jar acervo.jar
ENTRYPOINT ["java","-jar","/acervo.jar"]