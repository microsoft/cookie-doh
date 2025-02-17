FROM mcr.microsoft.com/mirror/nvcr/nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04

ENV PROJECT_NAME=cookie-doh
ENV PROJECT_PATH=/workspaces/$PROJECT_NAME
ENV PATH=/root/.local/bin:${PATH}
ENV PATH=$PROJECT_PATH/bin:$PATH
ENV PATH=$PROJECT_PATH/.venv/bin:$PATH

# Silence uv complaining about not being able to use hard links,
# tell uv to byte-compile packages for faster application startups,
# prevent uv from accidentally downloading isolated Python builds,
# declare `$PROJECT_PATH` as the target for `uv sync`.
ENV UV_LINK_MODE=copy
ENV UV_COMPILE_BYTECODE=1
ENV UV_PYTHON_DOWNLOADS=never
ENV UV_PROJECT_ENVIRONMENT=$PROJECT_PATH

WORKDIR $PROJECT_PATH

RUN apt-get -qq update && \
    apt-get -qq install --no-install-recommends \
    python3.12 libpython3.12 && \
    apt-get -qq clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

COPY --from=ghcr.io/astral-sh/uv:0.5.31 /uv /usr/local/bin/uv

RUN --mount=type=cache,target=/root/.cache \
    --mount=type=bind,source=uv.lock,target=uv.lock \
    --mount=type=bind,source=pyproject.toml,target=pyproject.toml \
    --mount=type=bind,source=.python-version,target=.python-version \
    uv sync --locked --no-default-groups --no-install-project

COPY src $PROJECT_PATH/src

RUN --mount=type=cache,target=/root/.cache \
    uv sync --locked --no-default-groups
