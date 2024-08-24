FROM httpd:latest
COPY index.html /usr/local/apache2/htdocs/
COPY server.sh /usr/local/apache2/htdocs/ && chmod +x server.sh
EXPOSE 80
ENTRYPOINT ["/usr/local/apache2/htdocs/server.sh"]
