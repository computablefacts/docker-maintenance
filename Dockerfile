FROM nginx:alpine

# English format: MM/DD/YYYY HH:MM:SS AM/PM and UTC
ENV COUNT_DOWN_END_DATE=now

COPY server-default.conf /etc/nginx/conf.d/default.conf
COPY src /usr/share/nginx/html/

COPY 40-generate-templates.sh /docker-entrypoint.d/
RUN chmod +x /docker-entrypoint.d/40-generate-templates.sh
