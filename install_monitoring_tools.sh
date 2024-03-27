#!/bin/bash

# Install Prometheus
echo "Installing Prometheus..."
wget https://github.com/prometheus/prometheus/releases/download/v2.30.3/prometheus-2.30.3.linux-amd64.tar.gz
tar -xvf prometheus-2.30.3.linux-amd64.tar.gz
sudo cp prometheus-2.30.3.linux-amd64/prometheus /usr/local/bin/
sudo cp prometheus-2.30.3.linux-amd64/promtool /usr/local/bin/
rm -rf prometheus-2.30.3.linux-amd64.tar.gz prometheus-2.30.3.linux-amd64

# Install Grafana
echo "Installing Grafana..."
wget https://dl.grafana.com/oss/release/grafana-8.3.2.linux-amd64.tar.gz
tar -zxvf grafana-8.3.2.linux-amd64.tar.gz
sudo cp -r grafana-8.3.2 /usr/local/grafana
sudo ln -s /usr/local/grafana/bin/grafana-server /usr/local/bin/grafana-server
rm -rf grafana-8.3.2.linux-amd64.tar.gz grafana-8.3.2

# Install Node Exporter
echo "Installing Node Exporter..."
wget https://github.com/prometheus/node_exporter/releases/download/v1.2.2/node_exporter-1.2.2.linux-amd64.tar.gz
tar -xvf node_exporter-1.2.2.linux-amd64.tar.gz
sudo cp node_exporter-1.2.2.linux-amd64/node_exporter /usr/local/bin/
rm -rf node_exporter-1.2.2.linux-amd64.tar.gz node_exporter-1.2.2.linux-amd64

# Install cAdvisor
echo "Installing cAdvisor..."
docker run -d --name=cadvisor --restart=always -p 8080:8080 -v /:/rootfs:ro -v /var/run:/var/run:rw -v /sys:/sys:ro -v /var/lib/docker/:/var/lib/docker:ro google/cadvisor:latest

echo "Monitoring tools installation completed."
