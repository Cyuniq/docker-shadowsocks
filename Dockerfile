FROM library/debian
EXPOSE 63333
COPY ./ss.json /etc/ 
COPY ./ss.sh /root/ 
RUN apt-get update \
    && apt-get install shadowsocks -y \
    && apt-get purge -y --auto-remove $buildDeps \
ENTRYPOINT ["/root/ss.sh"]