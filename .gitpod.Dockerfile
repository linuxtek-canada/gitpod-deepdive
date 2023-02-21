FROM gitpod/workspace-full:latest

RUN cd /workspace \
    && curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip
RUN /workspace/aws/install

RUN sudo apt update \
    && sudo apt install -y apt-utils --no-install-recommends apt-utils \
    && sudo add-apt-repository ppa:deadsnakes/ppa -y \
    && sudo apt update \
    && sudo apt install -y python3.11 \
