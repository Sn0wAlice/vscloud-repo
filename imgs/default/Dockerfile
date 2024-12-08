FROM ubuntu:20.04

ENV DEBIAN_FRONTEND="noninteractive"

RUN \
  apt-get update && \
  apt-get install -y \
    dash \
    git \
    curl \
    libatomic1 \
    nano \
    net-tools \
    sudo && \
  echo "**** install code-server ****" && \
  if [ -z ${CODE_RELEASE+x} ]; then \
    CODE_RELEASE=$(curl -sX GET https://api.github.com/repos/coder/code-server/releases/latest \
      | awk '/tag_name/{print $4;exit}' FS='[""]' | sed 's|^v||'); \
  fi && \
  mkdir -p /app/code-server && \
  curl -o \
    /tmp/code-server.tar.gz -L \
    "https://github.com/coder/code-server/releases/download/v${CODE_RELEASE}/code-server-${CODE_RELEASE}-linux-amd64.tar.gz" && \
  tar xf /tmp/code-server.tar.gz -C \
    /app/code-server --strip-components=1 && \
  echo "**** clean up ****" && \
  apt-get clean && \
  rm -rf \
    /config/* \
    /tmp/* \
    /var/lib/apt/lists/* \
    /var/tmp/*

RUN ln -sf /bin/dash /bin/sh
RUN echo "" >> .bashrc

ENV HOME="/home/alice"

# create user alice
RUN useradd -m -d /home/alice -s /bin/bash alice
RUN usermod -aG sudo alice
# add local files
COPY /root /
## add alice to sudoers
RUN echo "alice ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

## set alice home dir /home/alice
RUN mkdir -p /home/alice
RUN chown -R alice:alice /home/alice
RUN chmod -R 755 /home/alice


