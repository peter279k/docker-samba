FROM ubuntu:18.04

LABEL maintainer="Chun-Sheng, Li <peter279k@gmail.com>"

RUN DEBIAN_FRONTEND=noninteractive apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y samba samba-common-bin acl
COPY smb.conf /etc/samba/smb.conf
COPY entrypoint.sh entrypoint.sh
RUN mkdir /srv/private

RUN apt-get clean && apt-get autoremove -y

EXPOSE 139 445 137 138

ENTRYPOINT [ "/entrypoint.sh" ]
