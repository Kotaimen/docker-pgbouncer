# Pgbouncer on Debian

Uses out-of-box `pgbouncer` of `debian:jeessie`.

## Tags

- `latest`: [Dockerfile](https://github.com/Kotaimen/docker-pgbouncer/blob/develop/Dockerfile)

[![](https://badge.imagelayers.io/kotaimen/pgbouncer:latest.svg)](https://imagelayers.io/?images=kotaimen/pgbouncer:latest 'Get your own badge on imagelayers.io')

## Usage

Mount your configurations as a volume:

    docker run -v <pgbouncer_config_dir>:/etc/pgbouncer:ro pgbouncer

The default Debian config file writes logs to:

    /var/log/postgresql/
    
And listens to:

    0.0.0.0:6432

A sample [docker-compose.yml](https://github.com/Kotaimen/docker-pgbouncer/blob/develop/docker-compose.yml) is also provided.
