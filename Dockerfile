# Use the official NGINX stable image as a base
FROM nginx:stable

# Install necessary tools and clean up cache after installation
RUN apt-get update && apt-get install -y \
    wget \
    curl \
    iputils-ping \
    less \
    procps \
    vim \
    && rm -rf /var/lib/apt/lists/*

# Expose the default NGINX port
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]
