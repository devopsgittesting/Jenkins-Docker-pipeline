FROM centos:8
RUN yum install httpd -y
RUN yum clean all
ADD https://raw.githubusercontent.com/devopsgittesting/Jenkins-Docker-pipeline/main/index.html /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
