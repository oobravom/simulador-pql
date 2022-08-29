FROM postgres:14

ARG VERSION=1.0
ARG REVISION=Final
ARG AUTOR=oobravom
ARG AUTORS=oobravom
ARG VENDEDOR=TlacoTec
ARG HOST=pql.tlaco.tec
ARG APLICATIVO=simulador-pql
ARG URL_SRC=https://gitlab.com/$AUTOR/$APLICATIVO
ARG URL=https://hub.docker.com/repository/docker/$AUTOR/$APLICATIVO

ENV POSTGRES_DB=simulador
ENV POSTGRES_PASSWORD=TlacoTec
ENV POSTGRES_USER=simulador_key

LABEL \
    org.opencontainers.image.url="$URL" \
    org.opencontainers.image.source="$URL_SRC" \
    org.opencontainers.image.authors="$AUTORS" \
    org.opencontainers.image.vendor="$VENDEDOR" \
    org.opencontainers.image.version="$VERSION" \
    org.opencontainers.image.revision="$REVISION"

LABEL \
    name="$APLICATIVO" \
    vendor="$VENDEDOR" \
    version="$VERSION-$REVISION" \
    summary="Diccionario de datos para el autentificador del simulador." \
    description="Esta imagen contiene la información inicial del diccionario de datos en PostgreSQL, la cual es requerida para el gestor principal de acceso e identidad para el aplicativo simulador."
