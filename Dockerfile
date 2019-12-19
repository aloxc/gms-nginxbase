FROM nginx
RUN apt update && apt install -y netcat wget curl net-tools telnet xz-utils && apt clean && apt autoclean && \
mkdir -p /home/project
WORKDIR /home/project
RUN wget https://nodejs.org/dist/v12.14.0/node-v12.14.0-linux-x64.tar.xz && \
tar -xvf node-v12.14.0-linux-x64.tar.xz && \
mv node-v12.14.0-linux-x64 nodejs && \
ln -s /home/project/nodejs/bin/npm /usr/local/bin/  && \
ln -s /home/project/nodejs/bin/node /usr/local/bin/  && \
rm -rf node-v12.14.0-linux-x64.tar.xz 
