#!/usr/bin/env bash

sudo mkdir -p /etc/prometheus/

sudo curl -o /home/$SUDO_USER/docker_cleanup.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/main/docker_cleanup"
sudo curl -o /home/$SUDO_USER/docker_firewall.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/main/docker_firewall"
sudo curl -o /home/$SUDO_USER/docker_install.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/main/docker_install"
sudo curl -o /home/$SUDO_USER/docker_jenkins_install.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/main/docker_jenkins_install"
sudo curl -o /home/$SUDO_USER/docker_grafana_install.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/main/docker_grafana_install"
sudo curl -o /home/$SUDO_USER/prometheus.yml "https://raw.githubusercontent.com/micael-sjogren/cicd/main/prometheus.yml"
sudo curl -o /home/$SUDO_USER/docker_prometheus_install.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/main/docker_prometheus_install"

sudo chmod +x /home/$SUDO_USER/docker_cleanup.sh
sudo chmod +x /home/$SUDO_USER/docker_firewall.sh
sudo chmod +x /home/$SUDO_USER/docker_install.sh
sudo chmod +x /home/$SUDO_USER/docker_jenkins_install.sh
sudo chmod +x /home/$SUDO_USER/docker_grafana_install.sh
sudo chmod +x /home/$SUDO_USER/docker_prometheus_install.sh

sudo /home/$SUDO_USER/docker_cleanup.sh
sudo /home/$SUDO_USER/docker_install.sh
sudo /home/$SUDO_USER/docker_jenkins_install.sh
sudo /home/$SUDO_USER/docker_grafana_install.sh
sudo /home/$SUDO_USER/docker_prometheus_install.sh
sudo /home/$SUDO_USER/docker_firewall.sh
