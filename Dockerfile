FROM telegraf:1.20.4
RUN sed -i -e "s/ main[[:space:]]*\$/ main contrib non-free/" /etc/apt/sources.list
RUN apt update && apt install -y snmp snmpd  snmp-mibs-downloader
COPY ./synology /usr/share/snmp/mibs
COPY ./synology /var/lib/snmp/mibs
RUN chown telegraf:telegraf -R /usr/share/snmp/mibs
RUN chown telegraf:telegraf -R /var/lib/snmp/mibs
