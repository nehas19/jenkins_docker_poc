FROM ubuntu:14.04
RUN  apt-get update
RUN apt-get install -y --force-yes openjdk-7-jre-headless wget
RUN apt-get install -y tomcat7 
EXPOSE 8080                                  
RUN mkdir /var/lib/tomcat7/lib
RUN mkdir /var/lib/tomcat7/webapps/add
ADD database.jsp /var/lib/tomcat7/webapps/add/database.jsp
ADD target/ems_db-master.war /var/lib/tomcat7/webapps/

