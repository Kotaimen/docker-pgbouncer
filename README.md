# Pgbouncer Docker Image

``COPY`` configuration files into ``/etc/pgbouncer`` or just mount configuration as volume::

    docker run -v <pgbouncer_config_dir>:/etc/pgbouncer:ro pgbouncer

The default configuration file writes logs to::

    /var/log/postgresql/
    
And listens on ``localhost:6432``.
