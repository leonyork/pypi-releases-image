ARG CURL_VERSION
FROM curlimages/curl:${CURL_VERSION}

USER root
RUN apk add --no-cache jq
COPY releases.sh /bin/
RUN chmod 755 /bin/releases.sh

USER curl_user
WORKDIR /home/curl_user/

ENTRYPOINT [ "/bin/releases.sh" ]