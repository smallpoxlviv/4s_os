FROM openjdk:latest

ADD vetclinic.jar vetclinic.jar

ENTRYPOINT ["java", "-jar", "vetclinic.jar"]