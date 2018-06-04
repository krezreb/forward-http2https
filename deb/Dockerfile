FROM nginx:mainline-alpine

EXPOSE 80 

RUN rm /etc/nginx/conf.d/* 
RUN rm /etc/nginx/nginx.conf

ADD forward.conf /etc/nginx/conf.d/
ADD nginx.conf /etc/nginx/

