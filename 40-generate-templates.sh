#!/bin/sh

touch /patrick.test

envsubst < /usr/share/nginx/html/countdown.template.js > /usr/share/nginx/html/countdown.js
