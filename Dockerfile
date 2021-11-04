# syntax=docker/dockerfile:1
FROM ubuntu:18.04
RUN ls -la 
COPY /home/circleci/project/vendor/bundle /vendor/bundle
RUN ls -la 
RUN ls -la /vendor/bundle

