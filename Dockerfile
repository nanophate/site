# syntax=docker/dockerfile:1
FROM ubuntu:18.04
COPY . /home/circleci/project/vendor/bundle
RUN ls -la
