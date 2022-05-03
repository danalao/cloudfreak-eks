FROM openjdk:11.0.5-jdk

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/*.jar $PROJECT_HOME/app.jar

WORKDIR $PROJECT_HOME

CMD ["java",".jar","./Calculator-1.0-SNAPSHOT.jar"]
