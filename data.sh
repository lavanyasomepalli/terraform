#bin/bash
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.sevice
systemctl enable httpd.service
echo "Hello world from $ (hostname -f)">/var/www/html/index.html

