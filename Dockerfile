# SummerHoax Docker File

FROM nginx:alpine
COPY . /usr/share/nginx/html

EXPOSE 3333
