# Pgbouncer Docker Image

``COPY`` configuration files into ``/etc/pgbouncer`` or just mount a volume::

    docker run --rm -v <local_dir>:/etc/pgbouncer:ro pgbouncer

