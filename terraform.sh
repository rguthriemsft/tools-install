#!/bin/bash 
set -e
source _lib.sh

ver="0.12.24"
start "Terraform $ver"

cd /tmp
curl -fsS "https://releases.hashicorp.com/terraform/${ver}/terraform_${ver}_linux_amd64.zip" -o tf.zip

unzip tf.zip
mv terraform $HOME/.local/bin

end 'terraform' '--version'
