FROM nginx:1.15.8-alpine
#NGINX config
COPY ./nginx.conf /etc/nginx/nginx.conf

#content, comment out the ones you dont need!
COPY ./docs/index.html /usr/share/nginx/html/
COPY ./docs/*.js /usr/share/nginx/html/
COPY ./docs/*.css /usr/share/nginx/html/
RUN mkdir -p /usr/share/nginx/html/assets/images
RUN mkdir -p /usr/share/nginx/html/assets/images/icons
COPY ./docs/assets/images/*.jpg /usr/share/nginx/html/assets/images
COPY ./docs/assets/images/icons/*.svg /usr/share/nginx/html/assets/images/icons