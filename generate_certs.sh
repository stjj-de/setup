#!/bin/sh

# Comment out TLS related lines
sed -i -r 's/(listen .*443)/\1;#/g; s/(ssl_(certificate|certificate_key|trusted_certificate) )/#;#\1/g' /etc/nginx/sites-available/stjj.moritzruth.de.conf /etc/nginx/sites-available/analytics.stjj.moritzruth.de.conf

# Reload
sudo nginx -t && sudo systemctl reload nginx

# Generate certificates
certbot certonly --webroot -d stjj.moritzruth.de --email webmaster@moritzruth.de -w /var/www/_letsencrypt -n --agree-tos --force-renewal
certbot certonly --webroot -d analytics.stjj.moritzruth.de --email webmaster@moritzruth.de -w /var/www/_letsencrypt -n --agree-tos --force-renewal

# Uncomment TLS related lines
sed -i -r 's/#?;#//g' /etc/nginx/sites-available/stjj.moritzruth.de.conf /etc/nginx/sites-available/analytics.stjj.moritzruth.de.conf

# Reload again
sudo nginx -t && sudo systemctl reload nginx
