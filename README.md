# docs-builder

This builds a base image that is used to build all of the doc archives including
master. It unifies the Github Pages version across all derivative images.

> **Note**: This image does not include the Nginx config. To get that, you
> need to use the `docs/docker.github.io:docs-config` image. To just get the
> Nginx config from there, use a command such as:
>
> ```none
> COPY --from=docs/docker.github.io:docs-config /conf/nginx-overrides.conf /etc/nginx/conf.d/
> ```
>

