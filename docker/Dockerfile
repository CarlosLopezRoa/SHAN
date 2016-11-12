FROM solr
VOLUME ["~/files"]
EXPOSE 80
EXPOSE 8983
USER root
RUN apt-get update -y
RUN apt-get install apache2 -y
RUN service apache2 start
USER solr


