# Use the official NGINX image from Docker Hub
FROM nginx:latest

# Copy custom configuration file from the current directory
# to the location NGINX expects in the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static website files into the appropriate directory
COPY ./html /usr/share/nginx/html

# Expose port 80 to the host
EXPOSE 80

# Start NGINX when the container has initialized
CMD ["nginx", "-g", "daemon off;"]
