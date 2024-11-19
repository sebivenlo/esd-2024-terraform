FROM ubuntu:22.04

RUN apt-get update && apt-get install -y wget gnupg lsb-release

RUN wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list

RUN apt-get update && apt-get install -y \
    wget \
    unzip \
    terraform \
    direnv \
    && rm -rf /var/lib/apt/lists/*

# Set up direnv hook
RUN echo 'eval "$(direnv hook bash)"' >> ~/.bashrc
RUN echo 'eval "$(direnv hook bash)"' >> ~/.bash_profile