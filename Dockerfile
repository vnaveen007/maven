FROM tomcat
MAINTAINER richard
RUN apt-get update && apt-get -y upgrade
WORKDIR /usr/local/tomcat
EXPOSE 8080
