#bin/bash
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo "Hello world . This is Somepalli Lavanya doing project on terraform. This is last step of the project  $ (hostname -f)">/var/www/html/index.html

