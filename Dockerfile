FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
COPY ./docs/index.html /var/www/html
COPY ./docs/*.js /var/www/html
COPY ./docs/*.css /var/www/html
RUN mkdir -p /var/www/html/assets/images
RUN mkdir -p /var/www/html/assets/images/icons
COPY ./docs/assets/images/*.jpg /var/www/html/assets/images
COPY ./docs/assets/images/icons/*.svg /var/www/html/assets/images/icons
EXPOSE 80
CMD ["nginx","-g","daemon off;"]





#FROM nginx:1.15.8-alpine

#config
#copy ./nginx.conf /etc/nginx/nginx.conf

#content, comment out the ones you dont need!
#copy ./docs/*.html /var/www/html
#copy ./docs/*.css /var/www/html
#copy ./docs/assets/images/*.jpg /var/www/htmlassets/images/
#copy ./docs/assets/images/icons/*.svg /var/www/htmlassets/images/icons
#copy ./docs/*.js /var/www/html