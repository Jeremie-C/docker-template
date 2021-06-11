FROM debian:buster-slim
LABEL maintainer="Jeremie-C <Jeremie-C@users.noreply.github.com>"

ENV S6_BEHAVIOUR_IF_STAGE2_FAILS=2

COPY rootfs/ /

RUN apt-get update && apt-get upgrade -y && \
  apt-get install -y --no-install-recommends \
  # S6 Install
  ca-certificates wget && \  
  # Nettoyage
  rm -rf /var/lib/apt/lists/*&& \
  # S6 OVERLAY
  chmod +x /scripts/s6-overlay.sh && \
  /scripts/s6-overlay.sh && \
  rm /scripts/s6-overlay.sh

# Nettoyage
RUN apt-get remove -y ca-certificates wget && \
  apt-get autoremove -y && \
  rm -rf /tmp/* /scripts /var/lib/apt/lists/*

ENTRYPOINT ["/init"]