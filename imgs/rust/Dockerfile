

RUN apt update && \
    apt install -y build-essential \
    apt clean && \
    rm -rf \
      /config/* \
      /tmp/* \
      /var/lib/apt/lists/* \
      /var/tmp/*

RUN curl -sSf https://sh.rustup.rs > rustup.sh
RUN bash rustup.sh -y
RUN PATH="$HOME/.cargo/bin:$PATH"



