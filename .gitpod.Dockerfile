FROM alpine:3.12
ENTRYPOINT ["/sbin/tini","--","/usr/local/searx/dockerfiles/docker-entrypoint.sh"]
EXPOSE 8080
VOLUME /etc/searx
