FROM registry.access.redhat.com/ubi8/openjdk-11
COPY target/*.jar /opt/spring-petclinic.jar
ENV JAVA_TOOL_OPTIONS -agentlib:jdwp=transport=dt_socket,address=8080,server=y,suspend=n
CMD java -jar /opt/spring-petclinic.jar
EXPOSE 8080
