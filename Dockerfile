FROM debian:buster-slim
LABEL maintainer="Jeremie-C <Jeremie-C@users.noreply.github.com>"

RUN apt-get update && apt-get upgrade -y && \
  apt-get install -y --no-install-recommends \
  # S6 Install
  ca-certificates wget && \  
  # Nettoyage
  rm -rf /var/lib/apt/lists/*

COPY rootfs/ /
# S6 OVERLAY
RUN chmod +x /tmp/s6-overlay.sh && /tmp/s6-overlay.sh && rm /tmp/s6-overlay.sh

# Nettoyage
RUN apt-get remove -y ca-certificates wget && \
  apt-get autoremove -y && \
  rm -rf /tmp/* /var/lib/apt/lists/*

ENTRYPOINT ["/init"]