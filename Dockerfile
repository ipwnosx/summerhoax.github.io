# SummerHoax Docker File

FROM webdevops/php-nginx:7.4-alpine
COPY . /usr/share/nginx/html

# edits to nginx crap
RUN chown -R nginx:nginx /usr/share/nginx/html
RUN sed -i "s/index.html/index.php/g" /etc/nginx/conf.d/default.conf

EXPOSE 3333
