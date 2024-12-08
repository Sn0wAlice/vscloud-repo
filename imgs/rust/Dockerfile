

RUN curl -sSf https://sh.rustup.rs > rustup.sh
RUN bash rustup.sh -y
RUN PATH="$HOME/.cargo/bin:$PATH"

RUN apt-get update && \
    apt-get install -y build-essential \
    apt-get clean && \
    rm -rf \
      /config/* \
      /tmp/* \
      /var/lib/apt/lists/* \
      /var/tmp/*


