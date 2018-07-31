FROM library/debian
RUN apt-get update \
    && apt-get install shadowsocks -y \
    && apt-get install git \
    && cd /root \
    && git clone https://github.com/Cyuniq/docker-shadowsocks.git \
    && apt-get remove git -y\
    && apt-get purge -y --auto-remove $buildDeps
