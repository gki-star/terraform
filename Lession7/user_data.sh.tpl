#!/bin/bash
yum -y update
yum -y install httpd

myIP = `curl http://169.254.169.254/latest/meta-data/local-ipv4`

cat <<EOF > /var/www/html/index.html
<html>
<h2>Build by power of Terraform <font color="red"> v1.0.9</font></h2><br>
Owner ${f_name} ${l_name} <br>

%{ for x in names ~}
Here is ${x} <br>
%{ endfor ~}
</html>
EOF

sudo service httpd start
chkconfig httpd on
