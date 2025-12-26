FROM debian:forky-slim

# TODO: Add specific versions for each package installation
RUN apt-get update && apt-get install -y \
    awscli \
    curl \
    wget \
    python3 \
    python3-pip \
    python3-dev \
    git \
    golang \
    jq \
    yq \
    nodejs \
    npm \
    rustup \
    gcc \
    libffi-dev \
    libc-bin \
    libc-dev \
    && apt-get clean

RUN pip install uv --break-system-packages
RUN npm install -g aws-cdk
RUN rustup --quiet default stable 
