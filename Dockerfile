FROM mcr.microsoft.com/mirror/nvcr/nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04 AS base

ENV PROJECT_NAME=cookie-doh
ENV PROJECT_PATH=/workspaces/$PROJECT_NAME
ENV PATH=/root/.local/bin:${PATH}
ENV PATH=$PROJECT_PATH/bin:$PATH
ENV PATH=$PROJECT_PATH/.venv/bin:$PATH

WORKDIR $PROJECT_PATH


RUN apt-get -qq update && \
    apt-get -qq install --no-install-recommends \
    python3-minimal python3-dev python3-pip python3-venv python-is-python3 wget pipx && \
    pipx ensurepath && \
    apt-get -qq clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

RUN pipx install poetry && \
    rm -rf ~/.cache


FROM base AS production

RUN mkdir -p $PROJECT_PATH/src/cookie && \
    touch $PROJECT_PATH/src/cookie/__init__.py && \
    touch $PROJECT_PATH/README.md

COPY pyproject.toml poetry.lock $PROJECT_PATH/

RUN poetry install --only main && \
    rm -rf /root/.cache

COPY src $PROJECT_PATH/src


FROM base AS devcontainer

RUN sudo mkdir -p -m 755 /etc/apt/keyrings && \
    wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
    chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg

RUN apt-get -qq update && \
    apt-get -qq install --no-install-recommends \
    git zsh sshd tmux fzf direnv neovim gh && \
    apt-get -qq clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*
