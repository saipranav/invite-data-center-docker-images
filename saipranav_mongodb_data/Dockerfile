# Base Os
FROM saipranav/ubuntu-lister:trusty
MAINTAINER Sai Pranav <saipranav.ravichandran@listertechnologies.com>

# Environment variables which can be changed with -e parameter in docker build container command
ENV DATA_DIR /data/db

# Create a data folder
RUN mkdir -p $DATA_DIR

# Specify this as volume of container
VOLUME $DATA_DIR
