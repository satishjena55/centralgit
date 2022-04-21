FROM tomcat 
WORKDIR webapps 
COPY target/WebApp.war .
RUN rm -rf ROOT && mv WebApp.war ROOT.war
RUN yum install python -y
#entrypoint
ENTRYPOINT ["sh", "/usr/local/tomcat/bin/startup.sh"]

