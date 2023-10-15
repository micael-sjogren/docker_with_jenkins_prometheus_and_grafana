#!/usr/bin/env bash

# Ensure prometheus directory exists
sudo mkdir -p /etc/prometheus/

# Verify script URLs and download them
sudo curl -o /home/$USER/docker_cleanup.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/main/docker_cleanup"
sudo curl -o /home/$USER/docker_firewall.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/main/docker_firewall"
sudo curl -o /home/$USER/docker_install.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/main/docker_install"
sudo curl -o /home/$USER/docker_jenkins_install.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/main/docker_jenkins_install"
sudo curl -o /home/$USER/docker_grafana_install.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/main/docker_grafana_install"
sudo curl -o /etc/prometheus/prometheus.yml "https://raw.githubusercontent.com/micael-sjogren/cicd/main/prometheus.yml"
sudo curl -o /home/$USER/docker_prometheus_install.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/main/docker_prometheus_install"

# Make scripts executable
sudo chmod +x /home/$USER/docker_cleanup.sh
sudo chmod +x /home/$USER/docker_firewall.sh
sudo chmod +x /home/$USER/docker_install.sh
sudo chmod +x /home/$USER/docker_jenkins_install.sh
sudo chmod +x /home/$USER/docker_grafana_install.sh
sudo chmod +x /home/$USER/docker_prometheus_install.sh

# Execute scripts
sudo /home/$USER/docker_cleanup.sh
sudo /home/$USER/docker_install.sh
sudo /home/$USER/docker_jenkins_install.sh
sudo /home/$USER/docker_grafana_install.sh
sudo /home/$USER/docker_prometheus_install.sh
sudo /home/$USER/docker_firewall.sh



