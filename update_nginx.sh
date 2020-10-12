#!/bin/sh

sudo cp -r ./nginx /etc
sudo nginx -t && sudo systemctl reload nginx
