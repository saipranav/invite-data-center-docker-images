# Base OS 
FROM saipranav/ubuntu-lister:trusty

# Get and install node 4.3.1 and 
RUN apt-get install -y --force-yes python-all rlwrap

RUN curl https://deb.nodesource.com/node_4.x/pool/main/n/nodejs/nodejs_4.3.1-1nodesource1~trusty1_amd64.deb > node.deb \
 && dpkg -i node.deb \
 && rm node.deb

RUN npm install -g npm

# Environment variable which can be changed with -e in docker run command
ENV NODE_ENV production

# Command to run after building container
CMD [ "npm", "version" ]
