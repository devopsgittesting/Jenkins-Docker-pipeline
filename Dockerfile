FROM httpd
ADD https://raw.githubusercontent.com/devopsgittesting/Jenkins-Docker-pipeline/main/index.html /usr/local/apache2/htdocs/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

