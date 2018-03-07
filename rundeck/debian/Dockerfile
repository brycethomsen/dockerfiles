# docker run \
#     -d \
#     --restart unless-stopped \
#     --name rundeck \
#     -v `pwd`/rundeck/etc:/rundeck/etc \
#     -v `pwd`/rundeck/server/config:/rundeck/server/config \
#     -v `pwd`/rundeck/projects:/rundeck/projects \
#     -v /var/run/docker.sock:/var/run/docker.sock \
#     -p 4440:4440 \
#     rundeck
FROM openjdk:8-stretch
RUN apt-get update && apt-get install -y \
    uuid-runtime \
    openssh-client \
    curl
WORKDIR /rundeck
COPY ./00-aliases.sh /etc/profile.d/00-aliases.sh
RUN cat /etc/profile.d/00-aliases.sh >> ~/.bashrc
RUN curl -LOs http://dl.bintray.com/rundeck/rundeck-maven/rundeck-launcher-2.10.6.jar
RUN curl -LOs https://download.docker.com/linux/static/stable/x86_64/docker-17.12.0-ce.tgz  && \
    tar xzvf docker-17.12.0-ce.tgz && \
    mv docker/* /usr/bin && \
    rm -rf docker-17.12.0-ce.tgz
EXPOSE 4440
ENTRYPOINT ["java", "-jar", "rundeck-launcher-2.10.6.jar"]
