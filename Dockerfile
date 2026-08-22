# Use the official Tomcat image
FROM nginx:latest

# Copy the WAR file from the target directory into Tomcat's webapps folder
COPY /index.html /usr/share/nginx/html

# Apply permissions to the copied WAR file(s)
RUN chmod 755 /usr/local/tomcat/webapps/*.war

# Expose the Tomcat default port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
