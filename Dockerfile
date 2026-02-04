FROM tomcat:10.1.52-jre21 

COPY tomcat/ /usr/local/tomcat/
RUN mv /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps/

