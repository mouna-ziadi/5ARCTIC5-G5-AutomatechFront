FROM nginx:alpine
COPY ./dist/summer-workshop-angular /usr/share/nginx/html
EXPOSE 4200
CMD ["nginx", "-g", "daemon off;"]

