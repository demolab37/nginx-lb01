# Use the official stable NGINX image as the base
FROM nginx:stable

# Install required packages
RUN apt-get update && \
    apt-get install -y vim iputils-ping curl wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
