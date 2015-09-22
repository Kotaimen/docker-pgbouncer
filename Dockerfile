FROM        ubuntu:14.04
MAINTAINER  Kotaimen <kotaimen.c@gmail.com>

ENV         DEBIAN_FRONTEND noninteractive

RUN         locale-gen en_US.UTF-8
ENV         LANG en_US.UTF-8
ENV         LANGUAGE en_US:en
ENV         LC_ALL en_US.UTF-8

RUN         apt-get -qq update && \
            apt-get install -yq pgbouncer

WORKDIR     /etc/pgbouncer

EXPOSE      6432
ENTRYPOINT  ["pgbouncer"]
CMD         ["-u", "postgres", "/etc/pgbouncer/pgbouncer.ini"]
