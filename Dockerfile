FROM nginx
RUN apt update && apt install -y netcat wget curl net-tools telnet && apt clean && apt autoclean