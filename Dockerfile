# SummerHoax Docker File

FROM webdevops/php-nginx:7.4-alpine
COPY . /app

# edits to nginx crap
RUN chown -R nginx:nginx /app
#RUN sed -i "s/index.html/index.php/g" /etc/nginx/conf.d/default.conf

EXPOSE 3333
