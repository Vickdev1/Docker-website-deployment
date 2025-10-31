FROM    nginx:alpine    
WORKDIR /Kubernetes
RUN rm -rf /usr/share/nginx/html/*
# install the page as the default index so accessing / returns it (avoids 403 when no index exists)
# Provide the page both as index.html (for /) and as docker.html (so /docker.html still works)
COPY docker.html /usr/share/nginx/html/docker.html
COPY docker.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]