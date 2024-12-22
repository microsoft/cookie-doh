FROM mcr.microsoft.com/mirror/nvcr/nvidia/cuda:12.1.1-cudnn8-devel-ubuntu22.04

ENV PROJECT_NAME=cookie-doh
ENV PROJECT_PATH=/workspaces/$PROJECT_NAME
ENV PATH=/root/.local/bin:${PATH}
ENV PATH=$PROJECT_PATH/bin:$PATH
ENV PATH=$PROJECT_PATH/.venv/bin:$PATH

WORKDIR $PROJECT_PATH

RUN mkdir -p $PROJECT_PATH/src/cookie && \
    touch $PROJECT_PATH/src/cookie/__init__.py && \
    touch $PROJECT_PATH/README.md

COPY pyproject.toml uv.lock $PROJECT_PATH/

RUN curl -LsSf https://astral.sh/uv/install.sh | sh && \
    uv sync --no-dev && \
    uv cache clean

COPY src $PROJECT_PATH/src
