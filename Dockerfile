# Use official Nginx image
FROM nginx:alpine

# Remove default HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy your HTML file(s)
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx (default command is fine)
