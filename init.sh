#!/bin/sh

sudo apt update && sudo apt install -y nginx
sudo cp -r ./nginx /etc

sudo openssl dhparam -out /etc/nginx/dhparam.pem 2048
mkdir -p /var/www/_letsencrypt
chown www-data /var/www/_letsencrypt

./generate_certs.sh

echo -e '#!/bin/bash\nnginx -t && systemctl reload nginx' | tee /etc/letsencrypt/renewal-hooks/post/nginx-reload.sh
sudo chmod a+x /etc/letsencrypt/renewal-hooks/post/nginx-reload.sh

./update_docker.sh
