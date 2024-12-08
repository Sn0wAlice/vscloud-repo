

RUN apt update && \
    apt install -y gcc make libc6-dev

RUN curl -sSf https://sh.rustup.rs > rustup.sh
RUN bash rustup.sh -y
RUN PATH="$HOME/.cargo/bin:$PATH"



