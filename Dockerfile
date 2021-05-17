FROM node:16-alpine
LABEL maintainer="sylwek.sokolowski@gmail.com"

ARG BUILD_DATE
ARG BUILD_NAME
ARG BUILD_VERSION
ARG VCS_REF

LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.name=$BUILD_NAME
LABEL org.label-schema.description="json-server Linux by slydeveloper"
LABEL org.label-schema.url="https://github.com/slydeveloper/json-server"
LABEL org.label-schema.vcs-url="https://github.com/slydeveloper/json-server"
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.vendor="Sylwester Sokolowski"
LABEL org.label-schema.version=$BUILD_VERSION
LABEL org.label-schema.docker.cmd="docker run -p 8000:8000 --name json-server slydeveloper/json-server"

RUN npm install -g json-server

COPY db.json /db/db.json

EXPOSE 8000

ENTRYPOINT ["json-server", "--watch", "/db/db.json", "--host", "0.0.0.0", "--port", "8000"]