#!/bin/bash

apt update -y
apt install -y apache2 curl

TOKEN=$(curl -s -X PUT \
  "http://169.254.169.254/latest/api/token" \
  -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

INSTANCE_ID=$(curl -s \
  -H "X-aws-ec2-metadata-token: $TOKEN" \
  "http://169.254.169.254/latest/meta-data/instance-id")

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
  <title>My Portfolio</title>
</head>
<body>

<h1>Terraform Project Server 1</h1>

<h2>Instance ID: <span style="color:green">$INSTANCE_ID</span></h2>

<p>Welcome to WEBSITE NO 1</p>

</body>
</html>
EOF

systemctl enable apache2
systemctl restart apache2
