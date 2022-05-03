FROM openjdk:11.0.5-jdk

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar $PROJECT_HOME/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar

WORKDIR $PROJECT_HOME

CMD ["java",".jar","./spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar"]
