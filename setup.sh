#!/usr/bin/env bash

GITHUB_USER="micael-sjogren"
BASE_URL="https://raw.githubusercontent.com/$GITHUB_USER/docker_with_jenkins_prometheus_and_grafana/main/"

sudo mkdir -p /etc/prometheus/

SCRIPTS=("docker_cleanup" "docker_firewall" "docker_install" "docker_jenkins_install" "docker_grafana_install" "docker_prometheus_install" "prometheus.yml")

for script in "${SCRIPTS[@]}"; do
  sudo curl -o "/home/$SUDO_USER/$script.sh" "$BASE_URL$script"
  sudo chmod +x "/home/$SUDO_USER/$script.sh"
done

sudo /home/$SUDO_USER/docker_cleanup.sh
sudo /home/$SUDO_USER/docker_install.sh
sudo /home/$SUDO_USER/docker_jenkins_install.sh
sudo /home/$SUDO_USER/docker_grafana_install.sh
sudo /home/$SUDO_USER/docker_prometheus_install.sh
sudo /home/$SUDO_USER/docker_firewall.sh
