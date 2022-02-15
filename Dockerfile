# DOCKER-VERSION 1.1.0

#inherit from the base container, which have all the needed script to launch tasks
FROM ingi/inginious-c-base
LABEL org.inginious.grading.name="java-latest-junit5"

ARG JDKVERSION=latest
ARG JUNITVERSION=1.6.2
ARG CHECKSTYLEVERSION=8.34

RUN yum -y install java-${JDKVERSION}-openjdk-devel  java-${JDKVERSION}-openjdk  && \
    yum clean all
RUN echo "java:" && java -version
RUN echo "javac:" && javac -version

COPY junit-platform-console-standalone-${JUNITVERSION}.jar /usr/share/
COPY checkstyle-${CHECKSTYLEVERSION}-all.jar  /usr/bin/checkstyle-all.jar
COPY checkstyle /usr/bin

RUN echo JDKVERSION=$JDKVERSION JUNITVERSION=$JUNITVERSION CHECKSTYLEVERSION=$CHECKSTYLEVERSION
