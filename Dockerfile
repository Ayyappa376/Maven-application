FROM tomcat:8.0.20-jre8
MAINTAINER AYYAPPA
COPY target/maven-web-application.war /usr/local/tomcat/webapps/maven-web-application.war
