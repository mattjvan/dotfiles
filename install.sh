#!/bin/bash

# https://dev.to/aws-heroes/getting-started-with-github-codespaces-from-a-serverless-perspective-171k
echo "Installing AWS CLI"
pushd /tmp
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip -qq awscliv2.zip
sudo ./aws/install
rm -rf awscliv2.zip ./aws
popd

echo "Installing cfn-lint"
pip install cfn-lint

echo "Node LTS"
nvm install --lts
nvm use --lts

echo "PNPM"
curl -fsSL https://get.pnpm.io/install.sh | sh -

echo "Installing Azure CLI"
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
az bicep upgrade
