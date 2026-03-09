# Use nginx as the base image
FROM nginx:alpine

# Copy your website into nginx's serving folder
COPY index.html /usr/share/nginx/html/index.html

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80