# Build minifier utility
FROM golang:1.9-alpine AS minifier
RUN apk add --no-cache git
RUN go get -d github.com/tdewolff/minify/cmd/minify \
 && go build -v -o /usr/bin/minify github.com/tdewolff/minify/cmd/minify

FROM scratch

# Set the basic nginx config
COPY ./nginx-overrides.conf /conf/nginx-overrides.conf
COPY /scripts /scripts
COPY --from=minifier /usr/bin/minify /scripts/

# Print out a message if someone tries to run this image on its own
CMD echo 'This image is only meant to be used as part of the Docker docs build toolchain.'