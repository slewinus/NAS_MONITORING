version: '3.8'

services:
  telegraf:
    image: telecustom
    container_name: telegraf
    hostname: telegraf
    restart: always
    volumes:
#      - ./synology:/var/lib/snmp/mibs
      - ./telegraf/telegraf.conf:/etc/telegraf/telegraf.conf
#      - ./synology:/usr/share/snmp/mibs

