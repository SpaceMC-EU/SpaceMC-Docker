FROM itzg/minecraft-server:latest
LABEL authors="SpaceMC"

COPY --chmod=755 docker/entrypoint* /
ENTRYPOINT ["sh","/entrypoint"]