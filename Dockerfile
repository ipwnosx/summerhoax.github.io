# SummerHoax Docker File

FROM nginx:alpine
COPY . /usr/share/nginx/html

# edits to nginx crap
RUN apk add php
RUN chown -r nginx:nginx /usr/share/nginx/html
RUN sed -i "s/index.html/index.php/g" /etc/nginx/conf.d/default.conf

EXPOSE 3333
