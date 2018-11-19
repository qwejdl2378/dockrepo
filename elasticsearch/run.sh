#!/bin/bash
docker run -dt \
        --name=elasticsearch \
        -p 9200:9200 \
        -p 9300:9300 \
        -e "discovery.type=single-node" \
        elasticsearch-oss:6.5.0 