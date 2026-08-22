FROM tomcat:9-jdk17

COPY target/surya.war /usr/local/tomcat/webapps/surya.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
