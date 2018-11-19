FROM xshhs23/alpine-node:8.11.3

RUN mkdir /yapi && cd /yapi \
    && apk add --update \
    shadow git bash tar curl python py-pip gcc liburl make \
    && rm -rf /var/cache/apk/* \
    && git clone https://github.com/YMFE/yapi.git vendors \
    && cd vendors \
    && yarn install --production && yarn install-server

COPY config.json /yapi/
WORKDIR /yapi/vendors
ENTRYPOINT [ "node","app.js" ]
EXPOSE 3000
