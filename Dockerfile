FROM openjdk:8
EXPOSE 8009
ADD target/Phases4-0.0.1-SNAPSHOT.war Phases4-0.0.1-SNAPSHOT.war
ENTRYPOINT [ "java", "-jar", "/Phases4-0.0.1-SNAPSHOT.war" ]