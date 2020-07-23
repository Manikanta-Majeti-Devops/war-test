FROM tomcat:8.0

EXPOSE 9999

ARG WAR_FILE=target/*.war

COPY ${WAR_FILE} /user/local/tomcat/webapps

MAINTAINER "mmk4mmk.mrani@gmail.com"
