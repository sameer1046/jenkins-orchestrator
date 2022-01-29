# jenkins-orchestrator

Jenkins Orchestrator can be used to setup jenkins in master-agent mode where the master is a docker container and a JNPL agent as agents.

The agent can be scaled up to add more Nodes in the jenkins cluster.

#How to use

1. First you need to install docker and docker compose.
2. Then use docker-compose up to start jenkins.
3. You need to add Node in jenkins UI and it ll generate a token.
4. That tocken you have add in secrete in docker-compose file.
5. Then use docker-compose restart to restart the containers.
6.Now jenkins will show agent connected.
