#!/bin/bash
# Aguarda a inicialização completa da rede
sleep 10

# Atualiza pacotes
yum update -y

# Instala o Ansible (no Amazon Linux 2, usa-se o amazon-linux-extras)
amazon-linux-extras install -y ansible2

# Instala o Git para clonar o playbook
yum install -y git wget

# Clona o repositório que contém o playbook
git clone https://github.com/avanti-dvp/iac-com-terraform-e-aws.git /home/ec2-user/ansible-config

# Executa o playbook Ansible localmente
ansible-playbook /home/ec2-user/ansible-config/playbook.yaml