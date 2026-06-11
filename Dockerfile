FROM nvcr.io/nvidia/cuda:13.0.3-cudnn-devel-ubuntu24.04 AS base

ENV PROJECT_NAME=project
ENV PROJECT_PATH=/workspace/$PROJECT_NAME
ENV PATH=/root/.local/bin:${PATH}
ENV PATH=$PROJECT_PATH/bin:$PATH
ENV PATH=$PROJECT_PATH/.venv/bin:$PATH

RUN apt-get -qq update && \
    apt-get upgrade -y --no-install-recommends && \
    apt-get -qq install --no-install-recommends \
    python3.12 python3.12-dev libaio-dev git wget curl ca-certificates autoconf automake \
    build-essential libtool libibverbs-dev rdma-core ninja-build cmake && \
    apt-get -qq clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /usr/local/bin/

ARG USERNAME=admin
ARG USER_UID=1000
ARG USER_GID=$USER_UID
RUN groupadd --gid ${USER_GID} ${USERNAME} && \
    useradd --uid ${USER_UID} --gid ${USER_GID} -m ${USERNAME}

# Silence uv complaining about not being able to use hard links,
# tell uv to byte-compile packages for faster application startups,
# prevent uv from accidentally downloading isolated Python builds,
ENV UV_LINK_MODE=copy
ENV UV_COMPILE_BYTECODE=1
ENV UV_PYTHON=python3.12
ENV UV_PYTHON_DOWNLOADS=never
ENV UV_CACHE_DIR=/home/${USERNAME}/.cache/uv
ENV UV_PROJECT_ENVIRONMENT=$PROJECT_PATH/.venv

USER ${USER_UID}:${USER_GID}
WORKDIR $PROJECT_PATH
RUN --mount=type=cache,target=${UV_CACHE_DIR},uid=${USER_UID},gid=${USER_GID} \
    --mount=type=bind,source=pyproject.toml,target=pyproject.toml \
    --mount=type=bind,source=uv.lock,target=uv.lock \
    uv sync --locked --no-default-groups --no-install-project

COPY . $PROJECT_PATH/
RUN --mount=type=cache,target=${UV_CACHE_DIR},uid=${USER_UID},gid=${USER_GID} \
    uv sync --locked --no-default-groups
