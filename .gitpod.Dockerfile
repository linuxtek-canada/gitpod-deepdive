FROM gitpod/workspace-full:latest

ENV AWS_CLI_AUTO_PROMPT=on-partial
RUN cd /tmp \
    && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && /tmp/aws/install \
    && sudo apt update \
    && sudo apt install -y apt-utils --no-install-recommends apt-utils \
    && sudo add-apt-repository ppa:deadsnakes/ppa -y \
    && sudo apt update \
    && sudo apt install -y python3.11 \
