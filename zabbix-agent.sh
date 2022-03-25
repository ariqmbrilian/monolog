# install & enable service
sudo apt-get install zabbix-agent
sudo systemctl start zabbix-agent
sudo systemctl enable zabbix-agent

# custom config
Server=[ip_server]
Hostname=[hostname]

# restart service
sudo systemctl restart zabbix-agent
