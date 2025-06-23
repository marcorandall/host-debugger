# Dockerfile for Host Debugger Container
FROM ubuntu:22.04

# Install useful debugging and monitoring tools
RUN apt-get update && apt-get install -y \
  iproute2 \
  net-tools \
  procps \
  htop \
  curl \
  dnsutils \
  strace \
  lsof \
  git \
  && apt-get clean

# Create directory for external tools (mounted from host or cloned from repo)
RUN mkdir -p /opt/tools

COPY tools/ /opt/tools

WORKDIR /opt/tools

CMD ["bash"]

