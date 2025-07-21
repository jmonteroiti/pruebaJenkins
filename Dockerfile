FROM jenkins/jenkins:lts-jdk17
# if we want to install via apt
USER root
RUN apt-get update 
RUN apt-get install -y python3-pip
# Install app dependencies
# RUN pip install --upgrade pip

# make more-thing-here
# drop back to the regular jenkins user - good practice
USER jenkins

# FROM jenkins/jenkins:lts

# Crear el directorio para el volumen dentro del contenedor
RUN mkdir -p /var/jenkins_home/datos_jenkins

# Exponer el puerto 8010
EXPOSE 8010

# Definir el punto de montaje del volumen
VOLUME ["/var/jenkins_home/datos_jenkins"]

# Nota: La red 'network_jenkins' debe crearse y conectarse desde docker-compose o comandos docker externos, no desde el Dockerfile.
