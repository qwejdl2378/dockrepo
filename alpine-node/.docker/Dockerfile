# alpine-node
FROM gliderlabs/alpine:edge

RUN  apk add --update nodejs \
    && node -v \
    && cd /var/cache/apk && ls \
    && rm -rf /var/cache/apk/*  &&  echo "get node success" \
    && apk add --update nodejs-npm \
    && npm -v && echo "get npm successful" \
    && npm install yarn -g && echo "get yarn successful" \
    && yarn --version \
    && apk del nodejs-npm && echo "del nodejs-npm successful" \