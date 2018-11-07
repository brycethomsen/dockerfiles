# docker container run -d -p 8080:8080 --restart=unless-stopped --name=jenkins -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock jenkins

FROM jenkins/jenkins:lts-slim
USER root
RUN apt-get update && \
    apt-get -y install apt-transport-https ca-certificates curl software-properties-common gnupg2 \
        --no-install-recommends && \
    rm -rf /var/lib/apt/lists/
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
RUN apt-get update -qq \
    && apt-get install docker-ce -y
RUN usermod -aG docker jenkins
USER jenkins