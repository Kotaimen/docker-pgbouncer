# Pgbouncer

PostgreSQL connection pooler.

Simple out-of-box `pgbouncer` for debian.

## Tags

- `latest`: Same as `debian` 
- `debian`: `pgbouncer-1.5.4` on `debian:jessie` (Dockerfile)

[![](https://badge.imagelayers.io/kotaimen/pgbouncer:latest.svg)](https://imagelayers.io/?images=kotaimen/pgbouncer:latest 'Get your own badge on imagelayers.io')

## Usage

Mount your configuration directory as a volume:

    docker run -v <pgbouncer_config_dir>:/etc/pgbouncer:ro pgbouncer

You can use [supplied config files](https://github.com/Kotaimen/docker-pgbouncer/tree/develop/pgbouncer), which are copied from a fresh debian installation.  Also check pgbouncer's official [config file documentation](https://pgbouncer.github.io/config.html).

By default, pgbouncer writes logs to:

    /var/log/postgresql/
    
And listens on:

    0.0.0.0:6432

Docker-compose:
    
    pgbouncer:
      image: kotaimen/pgbouncer
      ports:
        - "6432:6432"
      volumes:
        - ./etc/pgbouncer:/etc/pgbouncer:ro
        - ./log/postgresql:/var/log/postgresql:rw
      restart: always
