# Use the official Nginx image
FROM nginx:1.26.3-alpine

# Remove default Nginx content
RUN rm -rf /usr/share/nginx/html/*

# Copy frontend files
COPY . /usr/share/nginx/html/

# Copy custom Nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 8800
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

