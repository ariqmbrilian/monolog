wget https://github.com/prometheus-community/postgres_exporter/releases/download/v0.10.1/postgres_exporter-0.10.1.linux-amd64.tar.gz
tar xvfz postgres_exporter-*.linux-amd64.tar.gz
sudo cp postgres_exporter-*.linux-amd64/postgres_exporter /usr/local/bin
find file queries.yaml

cat <<EOF > /usr/local/bin/postgres_exporter.env
export DATA_SOURCE_NAME='postgresql://postgres:password@192.168.254.85:5432/postgres?sslmode=disable'
EOF

cat <<EOF > /etc/systemd/system/postgres_exporter.service
[Service]
EnvironmentFile=/usr/local/bin/postgres_exporter.env
ExecStart=/usr/local/bin/postgres_exporter --extend.query-path /usr/local/bin/queries.yaml

[Install]
WantedBy=multi-user.target
EOF

systemctl daemon-reload
systemctl start postgres_exporter
systemctl enable postgres_exporter
