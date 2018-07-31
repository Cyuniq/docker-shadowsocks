FROM library/debian
RUN apt-get update \
    && apt-get install python-pip \
    && apt-get install wget \
    && pip install shadowsocks \
    && cd /root \
    && wget xxx \
    && tar -zxvf xxx.tar.gz \
    && cd xxx \
    && rm /root/xxx.tar.gz \
    && apt-get purge -y --auto-remove $buildDeps
    && ssserver -qq -c ./ss.json
    