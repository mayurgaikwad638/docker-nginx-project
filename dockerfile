# Use official Nginx image
FROM nginx:latest

# Remove default Nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy our custom web page into the Nginx web root
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

