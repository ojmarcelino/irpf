FROM alpine as packager

RUN apk -U --progress -q --no-cache add openjdk11-jdk openjdk11-jmods libxext libxrender libxtst libxi 

ENV JAVA_MINIMAL="/opt/java-minimal"

RUN /usr/lib/jvm/java-11-openjdk/bin/jlink \
    --add-modules \
        java.base,java.sql,java.naming,java.desktop,java.management,java.security.jgss,java.instrument \
    --compress 2 --strip-debug --no-header-files --no-man-pages \
    --output "$JAVA_MINIMAL"

FROM alpine

WORKDIR /opt/IRPF2021

ARG url=https://downloadirpf.receita.fazenda.gov.br/irpf/2021/irpf/arquivos/IRPF2021-1.9.zip

ENV JAVA_HOME=/opt/java-minimal

ENV PATH="$PATH:$JAVA_HOME/bin"

COPY --from=packager "$JAVA_HOME" "$JAVA_HOME"

RUN apk -U --progress -q --no-cache add tini wget ttf-dejavu libxext libxrender libxtst libxi \
  && adduser -D -u 1000 irpf \
  && wget -q "$url" -O /opt/irpf.zip \
  && unzip -qq /opt/irpf.zip -d /opt 

USER irpf

ENTRYPOINT [ "java", "-jar", "/opt/IRPF2021/irpf.jar" ]