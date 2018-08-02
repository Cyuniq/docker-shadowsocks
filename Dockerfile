FROM library/debian
EXPOSE 63333
RUN apt-get update \
    && apt-get install shadowsocks -y \
    && apt-get purge -y --auto-remove $buildDeps \
COPY ./ss.json /etc/ 
COPY ./ss.sh /root/ 
ENTRYPOINT ["/root/ss.sh"]