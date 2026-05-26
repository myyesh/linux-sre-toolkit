FROM nginx:alpine

COPY nginx-deployment/site/ /usr/share/nginx/html/

EXPOSE 80
