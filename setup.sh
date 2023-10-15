#!/usr/bin/env bash

sudo curl -o /home/docker_cleanup.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/blob/main/docker_cleanup"
chmod +x /home/docker_cleanup.sh

sudo curl -o /home/docker_firewall.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/blob/main/docker_firewall"
chmod +x /home/docker_firewall.sh

sudo curl -o /home/docker_install.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/blob/main/docker_install"
chmod +x /home/docker_install.sh

sudo curl -o /home/docker_jenkins_install.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/blob/main/docker_jenkins_install"
chmod +x /home/docker_jenkins_install.sh

sudo curl -o /home/docker_grafana_install.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/blob/main/docker_grafana_install"
chmod +x /home/docker_grafana_install.sh

sudo curl -o /etc/prometheus/prometheus.yml "https://raw.githubusercontent.com/micael-sjogren/cicd/blob/main/prometheus.yml"
sudo curl -o /home/docker_prometheus_install.sh "https://raw.githubusercontent.com/micael-sjogren/cicd/blob/main/docker_prometheus_install"
chmod +x /home/docker_prometheus_install.sh


sudo /home/docker_cleanup.sh
sudo /home/docker_install.sh
sudo /home/docker_jenkins_install.sh
sudo /home/docker_grafana_install.sh
sudo /home/docker_prometheus_install.sh
sudo /home/docker_firewall.sh



