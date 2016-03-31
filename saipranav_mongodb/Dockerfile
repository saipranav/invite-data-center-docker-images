# Base Os
FROM saipranav/ubuntu-lister:trusty
MAINTAINER Sai Pranav <saipranav.ravichandran@listertechnologies.com>

# Download mongodb 3.2 for ubuntu trusty 
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927 && \
    echo "deb http://10.106.30.123:3142/repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.2.list && \
    apt-get update && \
    apt-get install -y --force-yes pwgen mongodb-org mongodb-org-server mongodb-org-shell mongodb-org-mongos mongodb-org-tools && \
    echo "mongodb-org hold" | dpkg --set-selections && echo "mongodb-org-server hold" | dpkg --set-selections && \
    echo "mongodb-org-shell hold" | dpkg --set-selections && \
    echo "mongodb-org-mongos hold" | dpkg --set-selections && \
    echo "mongodb-org-tools hold" | dpkg --set-selections

# Say where to store the db data
VOLUME /data/db

# Expose the port outside container
EXPOSE 27017

# Add enviroment variables which can be modified with -e while creating image

# Execute mongod command
ENTRYPOINT ["/usr/bin/mongod", "--bind_ip=0.0.0.0"]


