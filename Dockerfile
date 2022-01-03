FROM --platform=linux/amd64 golang:1.17

LABEL org.opencontainers.image.authors="johan.dev@fylling.se"

# Build Delve
RUN go install github.com/go-delve/delve/cmd/dlv@latest

# Install docker
RUN apt-get update
RUN apt install docker.io -y
RUN docker --version

# Install NPM
RUN apt install npm -y

EXPOSE 2345 2345

CMD ["bash"]
