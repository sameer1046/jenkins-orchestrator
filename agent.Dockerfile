FROM jenkins/inbound-agent
USER root
RUN apt-get update && apt-get install -y python3-pip curl && update-alternatives --install /usr/bin/python python /usr/bin/python3 1
#RUN mkdir /home/administrator/agent && chown jenkins /home/administrator/agent
USER jenkins


