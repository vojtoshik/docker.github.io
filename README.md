# docs-config

This is just a place to store the Nginx config and some other utility scripts
for use in the Docs build toolchain. To use it to get the Nginx config, use a
line like one of the following in your Dockerfile:

```none
COPY --from=docs/docker.github.io:docs-config /conf/nginx-overrides.conf /etc/nginx/conf.d/
```

```none
COPY --from=docs/docker.github.io:docs-config /scripts/* /usr/bin/
```

