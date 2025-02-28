
FROM openjdk:17-jdk-alpine
LABEL maintainer="jzhou@tristarmail.com"
VOLUME /root/.gitbucket
COPY ./target/executable/gitbucket.war gitbucket.war
ENTRYPOINT ["java","-jar","./gitbucket.war"]

# docker build -t gitbucket .
