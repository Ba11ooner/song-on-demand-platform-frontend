FROM nginx

WORKDIR /usr/share/nginx/html
USER root

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY werun-frontend /usr/share/nginx/html/werun-frontend

EXPOSE 80
CMD ["nginx","-g","daemon off;"]