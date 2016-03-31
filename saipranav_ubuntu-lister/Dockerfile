# Base Os
FROM ubuntu:trusty
MAINTAINER Sai Pranav <saipranav.ravichandran@listertechnologies.com>

# Download mongodb 3.2 for ubuntu trusty 
RUN sed -i 's/http:\/\/archive/http:\/\/10\.106\.30\.123:3142\/in\.archive/g' && \
    apt-get update && \
    apt-get install -y --force-yes curl

# Execute command
CMD "true"


