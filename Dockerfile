FROM debian:buster-slim
LABEL maintainer="Jeremie-C <Jeremie-C@users.noreply.github.com>"

RUN apt-get update && apt-get upgrade -y && \
  # Nettoyage
  rm -rf /var/lib/apt/lists/*

COPY rootfs/ /
# S6 OVERLAY
RUN chmod +x /tmp/s6-overlay.sh && /tmp/s6-overlay.sh && rm /tmp/s6-overlay.sh

ENTRYPOINT ["/init"]