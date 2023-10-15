#!/usr/bin/env bash

sudo curl -o docker_cleanup.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/blob/main/docker_cleanup"
chmod +x docker_cleanup.sh

sudo curl -o docker_firewall.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/blob/main/docker_firewall"
chmod +x docker_firewall.sh

sudo curl -o docker_install.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/blob/main/docker_install"
chmod +x docker_install.sh

sudo curl -o docker_jenkins_install.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/blob/main/docker_jenkins_install"
chmod +x docker_jenkins_install.sh

sudo curl -o docker_grafana_install.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/blob/main/docker_grafana_install"
chmod +x docker_grafana_install.sh

sudo curl -o /etc/prometheus/prometheus.yml "https://raw.githubusercontent.com/micael-sjogren/cicd/blob/main/prometheus.yml"
sudo curl -o /home/docker_prometheus_install.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/blob/main/docker_prometheus_install"
chmod +x /home/docker_prometheus_install.sh


sudo ./docker_cleanup.sh
sudo ./docker_install.sh
sudo ./docker_jenkins_install.sh
sudo ./docker_grafana_install.sh
sudo ./docker_prometheus_install.sh
sudo ./docker_firewall.sh



