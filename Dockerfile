FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y apache2

ADD pagina /var/www/html
VOLUME ["/var/www/html"]

EXPOSE 80

WORKDIR /datos
ADD entrypoint.sh /datos
CMD /datos/entrypoint.sh
