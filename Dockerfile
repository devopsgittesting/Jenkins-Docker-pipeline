FROM centos:7
RUN yum install httpd -y
ADD https://raw.githubusercontent.com/devopsgittesting/Jenkins-Docker-pipeline/main/index.html /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
