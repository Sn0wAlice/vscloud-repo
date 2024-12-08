

RUN curl -sSf https://sh.rustup.rs > rustup.sh
RUN sh rustup.sh -y
RUN echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> $HOME/.bashrc
RUN source $HOME/.bashrc
RUN rustup default stable


