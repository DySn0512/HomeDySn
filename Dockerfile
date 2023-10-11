FROM tomcat:9.0-jdk11-corretto-al2
RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/examples
ADD DySnWeb.war /usr/local/tomcat/webapps/
ADD Ch_Survey.war /usr/local/tomcat/webapps/
ADD Ch_Cart.war /usr/local/tomcat/webapps/
ADD Ch_Download.war /usr/local/tomcat/webapps/
ADD Ch_Email.war /usr/local/tomcat/webapps/
ADD Ch_Get_Post.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]