FROM 192.168.1.121:18079/timw/ci-base

USER root
ENV SWARM_CLIENT_VERSION 3.4

ADD ./run.sh /run.sh
ADD http://repo.jenkins-ci.org/releases/org/jenkins-ci/plugins/swarm-client/${SWARM_CLIENT_VERSION}/swarm-client-${SWARM_CLIENT_VERSION}.jar /usr/share/jenkins/swarm-client-${SWARM_CLIENT_VERSION}.jar
RUN chmod 644 /usr/share/jenkins/swarm-client-${SWARM_CLIENT_VERSION}.jar

WORKDIR /workspace

ENTRYPOINT ["/run.sh"]
