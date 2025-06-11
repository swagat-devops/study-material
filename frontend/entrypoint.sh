#!/bin/sh
# Replace the placeholder in env.js with the actual backend URL from ConfigMap
sed -i "s|EMPLOYEE_BACKEND_URL|$EMPLOYEE_BACKEND_URL|g" /usr/share/nginx/html/main*.js
sed -i "s|EMPLOYEE_BACKEND_URL|$EMPLOYEE_BACKEND_URL|g" /usr/share/nginx/html/main*.js
# Start Nginx
nginx -g "daemon off;"