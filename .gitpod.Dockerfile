FROM alpine:3.12
ENTRYPOINT ["/sbin/tini","--","/usr/local/searx/dockerfiles/docker-entrypoint.sh"]
EXPOSE 8080
VOLUME /etc/searx
VOLUME /var/log/uwsgi

ARG GIT_URL=unknown
ARG VERSION_GITCOMMIT=unknown
ARG SEARX_GIT_VERSION=unknown

ARG SEARX_GID=977
ARG SEARX_UID=977

RUN addgroup -g ${SEARX_GID} searx && \
    adduser -u ${SEARX_UID} -D -h /usr/local/searx -s /bin/sh -G searx searx

ARG TIMESTAMP_SETTINGS=0
ARG TIMESTAMP_UWSGI=0
ARG LABEL_VCS_REF=
ARG LABEL_VCS_URL=

ENV INSTANCE_NAME=searx \
    AUTOCOMPLETE= \
    BASE_URL= \
    MORTY_KEY= \
    MORTY_URL=

WORKDIR /usr/local/searx
