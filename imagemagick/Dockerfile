ARG BASE
ARG BASE_TAG=latest
FROM ${BASE}:${BASE_TAG}
RUN apt-get update && \
    apt-get install -y imagemagick \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/
ARG USER
ENV USER ${USER}
RUN groupadd -r $USER && useradd --no-log-init -r -g $USER $USER
WORKDIR /home/$USER
#USER $USER
ENTRYPOINT [ "mogrify" ]