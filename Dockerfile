FROM adoptopenjdk:11-jre-openj9
ARG JAR_FILE=build/libs/pages.jar
COPY ${JAR_FILE} pages.jar
ENTRYPOINT ["java","-jar","/pages.jar"]
