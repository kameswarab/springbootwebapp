FROM java
ADD ./target/spring-boot-web-0.0.1-SNAPSHOT.jar /spring-boot-web-0.0.1-SNAPSHOT.jar
EXPOSE 8080:8080
COPY target/*.jar /opt/app.jar
WORKDIR /opt
CMD ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-jar", "app.jar"]
