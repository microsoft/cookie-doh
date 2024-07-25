FROM mcr.microsoft.com/mirror/nvcr/nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04 AS base

ENV PROJECT_NAME=cookie-doh
ENV PROJECT_PATH=/workspaces/$PROJECT_NAME
ENV PATH=/root/.local/bin:${PATH}
ENV PATH=$PROJECT_PATH/bin:$PATH
ENV PATH=$PROJECT_PATH/.venv/bin:$PATH

WORKDIR $PROJECT_PATH


RUN apt-get -qq update && \
    apt-get -qq install --no-install-recommends \
    python3-minimal python3-dev python3-pip python3-venv pipx && \
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

RUN apt-get -qq update && \
    apt-get -qq install --no-install-recommends \
    apt-transport-https ca-certificates curl wget gnupg lsb-release \
    sudo git zsh openssh-server openssh-client tmux fzf direnv neovim

RUN mkdir -p -m 755 /etc/apt/keyrings && \
    wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null && \
    curl -sLS https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor | tee /etc/apt/keyrings/microsoft.gpg > /dev/null && \
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc && \
    chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg  && \
    chmod go+r /etc/apt/keyrings/microsoft.gpg && \
    chmod a+r /etc/apt/keyrings/docker.asc && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/azure-cli/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/azure-cli.list > /dev/null && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | tee /etc/apt/sources.list.d/github-cli.list > /dev/null && \
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

RUN apt-get -qq update && \
    apt-get -qq install --no-install-recommends \
    azure-cli gh \
    docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin && \
    apt-get -qq clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*
