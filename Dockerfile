FROM debian:latest

# Create app directory
WORKDIR /usr/src

# get packages
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install wget unzip default-jre

WORKDIR /opt
RUN wget http://www.willuhn.de/products/hibiscus-server/releases/hibiscus-server-2.6.20.zip
RUN unzip hibiscus-server-2.6.20.zip -d /opt && rm hibiscus-server-2.6.20.zip
