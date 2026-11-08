#!/bin/sh
# Inyectar variables de entorno en el HTML antes de arrancar nginx.
# Solo sustituye ${GA_MEASUREMENT_ID} — no toca otras variables del CSS.
envsubst '${GA_MEASUREMENT_ID}' \
  < /usr/share/nginx/html/index.html \
  > /tmp/index.html \
  && mv /tmp/index.html /usr/share/nginx/html/index.html

exec nginx -g 'daemon off;'
