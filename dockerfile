FROM tomcat:9.0

# Remove default webapps (optional, keeps it clean)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your HTML files into "tejas" folder
COPY . /usr/local/tomcat/webapps/tejas/

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat correctly
CMD ["catalina.sh", "run"]

