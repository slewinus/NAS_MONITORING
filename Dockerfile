FROM telegraf:1.20.4
RUN sed -i -e "s/ main[[:space:]]*\$/ main contrib non-free/" /etc/apt/sources.list  
RUN apt update && apt install -y snmp snmpd  snmp-mibs-downloader
