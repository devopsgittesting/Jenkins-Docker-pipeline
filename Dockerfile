FROM httpd:latest
#COPY index.html /usr/local/apache2/htdocs/
COPY server.sh /usr/local/apache2/htdocs/
RUN chmod +x /usr/local/apache2/htdocs/server.sh
RUN /bin/sh /usr/local/apache2/htdocs/server.sh
#RUN ./usr/local/apache2/htdocs/server.sh
EXPOSE 80
#CMD ["/bin/bash", "/usr/local/apache2/htdocs/server.sh"]
