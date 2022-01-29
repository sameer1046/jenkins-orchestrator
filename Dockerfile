FROM jenkins/jenkins:jdk11
USER root
RUN chmod -R 777 /usr/share/jenkins
USER jenkins


