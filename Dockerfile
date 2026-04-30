FROM tomcat:8.0.20-jre8
RUN rm -rf /usr/local/tomcat/conf/*
COPY target/*.war /usr/local/tomcat/webapps/
