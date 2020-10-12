#!/bin/sh

# Comment out TLS related lines
sudo sed -i -r 's/(listen .*443)/\1;#/g; s/(ssl_(certificate|certificate_key|trusted_certificate) )/#;#\1/g' /etc/nginx/sites-available/new.stjj.de.conf /etc/nginx/sites-available/analytics.stjj.de.conf

# Reload
sudo nginx -t && sudo service nginx reload

# Generate certificates
certbot certonly --webroot -d new.stjj.de --email webmaster@moritzruth.de -w /var/www/_letsencrypt -n --agree-tos --force-renewal
certbot certonly --webroot -d analytics.stjj.de --email webmaster@moritzruth.de -w /var/www/_letsencrypt -n --agree-tos --force-renewal

# Uncomment TLS related lines
sudo sed -i -r 's/#?;#//g' /etc/nginx/sites-available/new.stjj.de.conf /etc/nginx/sites-available/analytics.stjj.de.conf

# Reload again
sudo nginx -t && sudo service nginx reload
