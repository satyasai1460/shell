#!/bin/bash

apt_tools() {
    apt update
    apt install -y unzip jq
}

Tform() {
    wget https://releases.hashicorp.com/terraform/1.6.2/terraform_1.6.2_linux_amd64.zip
    unzip terraform_1.6.2_linux_amd64.zip && mv terraform /usr/local/bin
    terraform version
}

packerr() {
    wget https://releases.hashicorp.com/packer/1.8.1/packer_1.8.1_linux_amd64.zip
    unzip packer_1.8.1_linux_amd64.zip && mv packer /usr/local/bin
    packer version
}

dockerr() {
    curl https://get.docker.com | bash
    docker version
}

tools='terraform packer docker  unzip jq'
for tool in $tools; do
    $tool version >/dev/null 2>1
    if [ $? -eq 0 ]; then
        echo "$tool is already installed"
    else
        echo "Let's install $tool"
        if [ $tool = 'unzip' -o $tool = 'jq' ]; then
            apt_tools
        elif [ $tool = 'terraform' ]; then
            Tform
        elif [ $tool = 'packer' ]; then
            packerr
        elif [ $tool = 'docker' ]; then
            dockerr
        else
            echo "All Tools are Installed Already"
        fi
    fi
done
