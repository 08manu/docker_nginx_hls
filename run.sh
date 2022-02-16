#!/bin/sh

NGINX_CONFIG_FILE=/usr/local/nginx/conf/nginx.conf


RTMP_CONNECTIONS=${RTMP_CONNECTIONS-1024}
RTMP_STREAM_NAMES=${RTMP_STREAM_NAMES-live,testing}
RTMP_STREAMS=$(echo ${RTMP_STREAM_NAMES} | sed "s/,/\n/g")
RTMP_PUSH_URLS=$(echo ${RTMP_PUSH_URLS} | sed "s/,/\n/g")

echo "Starting server"
/usr/local/nginx/sbin/nginx -g "daemon off;"
