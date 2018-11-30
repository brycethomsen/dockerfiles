ARG BASE
ARG BASE_TAG=latest
FROM ${BASE}:${BASE_TAG}
ARG USER
ENV USER ${USER}
RUN groupadd -r $USER && useradd --no-log-init -r -g $USER $USER && \
    install -d -m 0755 -o $USER -g $USER /home/$USER && \
    apt-get update && \
    apt-get install -y imagemagick && \
    rm -rf /var/lib/apt/lists/ && \
    chown -R $USER:$USER /home/$USER
WORKDIR /home/$USER
USER $USER
ENTRYPOINT [ "mogrify" ]