FROM postgres:14

ARG VERSION=1.0
ARG REVISION=Final
ARG APLICATIVO=simulador-pql
ARG VENDEDOR=TlacoTec
ARG AUTOR=oobravom

ENV POSTGRES_PASSWORD=TlacoTec
ENV POSTGRES_USER=simulador_key
ENV POSTGRES_DB=simulador

LABEL \
	org.opencontainers.image.authors="$AUTOR" \
	org.opencontainers.image.vendor="$VENDEDOR" \
	org.opencontainers.image.url="local" \
	org.opencontainers.image.source="https://github.com/$AUTOR/$APLICATIVO" \
	org.opencontainers.image.version="$VERSION" \
	org.opencontainers.image.revision="$REVISION" \
	vendor="$VENDEDOR" \
	name="$APLICATIVO" \
	version="$VERSION-$REVISION" \
	summary="Diccionario de datos para el autentificador del simulador." \
	description="Esta imagen contiene la información inicial del diccionario de datos en PostgreSQL, la cual es requerida para el gestor principal de acceso e identidad para el aplicativo simulador."
