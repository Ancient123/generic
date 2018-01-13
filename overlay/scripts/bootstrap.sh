#!/bin/sh
set -e
CACHE_MEM_SIZE:='1g'
CACHE_DISK_SIZE:='150g'
CACHE_MAX_AGE:='90d'
sed -i "s/CACHE_MEM_SIZE/${CACHE_MEM_SIZE}/"   /etc/nginx/nginx.conf
sed -i "s/CACHE_DISK_SIZE/${CACHE_DISK_SIZE}/" /etc/nginx/nginx.conf
sed -i "s/CACHE_MAX_AGE/${CACHE_MAX_AGE}/"     /etc/nginx/nginx.conf
/usr/sbin/nginx -t
/usr/sbin/nginx -g "daemon off;"
