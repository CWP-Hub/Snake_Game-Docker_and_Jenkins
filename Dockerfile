# Use a lightweight Nginx image
FROM nginx:alpine

# Remove default index.html
RUN rm /usr/share/nginx/html/index.html

# Copy your snake game HTML into Nginx web folder
COPY src/index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
