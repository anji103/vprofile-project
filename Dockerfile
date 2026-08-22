# Use the official Tomcat image
FROM nginx:latest

# Copy the WAR file from the target directory into Tomcat's webapps folder
COPY /index.html /usr/share/nginx/html


# Expose the Tomcat default port
EXPOSE 8080


