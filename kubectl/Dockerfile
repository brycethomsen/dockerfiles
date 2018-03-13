FROM busybox AS build
#ARG ver
ADD https://storage.googleapis.com/kubernetes-release/release/v1.7.0/bin/linux/amd64/kubectl /
RUN chmod +x /kubectl

FROM scratch
COPY --from=build /kubectl /
ENTRYPOINT ["/kubectl"]
