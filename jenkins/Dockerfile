FROM jenkins/jenkins

USER root

# Install Ansible
RUN apt update && apt install python3-pip -y && \
    pip3 install ansible --upgrade

# Install Docker
RUN apt update && apt install ca-certificates curl gnupg lsb-release -y && \
    mkdir -p /etc/apt/keyrings && \
    curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg && \
    echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null && \
    apt update && apt install docker-ce docker-ce-cli containerd.io docker-compose-plugin -y

# Install docker compose 
RUN DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker} && \
    mkdir -p $DOCKER_CONFIG/cli-plugins && \
    curl -SL https://github.com/docker/compose/releases/download/v2.11.2/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose && \
    chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose && apt install docker-compose -y

RUN usermod -aG docker jenkins

USER jenkins
