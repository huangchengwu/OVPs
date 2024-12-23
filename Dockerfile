FROM  python:3.9.17-alpine3.18
WORKDIR  /OVP
 
RUN  echo "https://mirrors.aliyun.com/alpine/v3.14/main" > /etc/apk/repositories && \
    echo "https://mirrors.aliyun.com/alpine/v3.14/community" >> /etc/apk/repositories  && \  
    apk update && apk add build-base dumb-init mariadb-dev  && \
    pip install --upgrade  pip -i https://mirrors.aliyun.com/pypi/simple/ && \
    pip install -r requirements.txt  -i https://mirrors.aliyun.com/pypi/simple/ 
ENTRYPOINT ["/usr/bin/dumb-init", "--"]

ADD OVP.tar.gz . 
CMD [ "/OVP/start.sh"]