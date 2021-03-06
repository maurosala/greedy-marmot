FROM nginx:alpine
COPY nginx.conf /etc/nginx/conf.d/configfile.template

ENV PORT 8080
EXPOSE 8080
CMD sh -c "envsubst '\$PORT' < /etc/nginx/conf.d/configfile.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"
