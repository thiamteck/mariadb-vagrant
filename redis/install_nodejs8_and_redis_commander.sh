#!/bin/sh
wget -q --no-check-certificate https://nodejs.org/dist/v8.12.0/node-v8.12.0-linux-x64.tar.xz
sudo tar --strip-components 1 -xJf node-v8.12.0-linux-x64.tar.xz -C /usr/local

rm node-v8.12.0-linux-x64.tar.xz

echo "NodeJS installed at: /usr/local"

sudo -E env "PATH=$PATH" npm install -g redis-commander

echo "redis-commander installed at: /usr/local/bin/"

# redis-commander --redis-port 6379 --redis-host 127.0.0.1 -p 8081 -a 0.0.0.0
