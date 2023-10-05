FROM itzg/minecraft-server:latest
LABEL authors="SpaceMC"

ENV TYPE=PAPER \
    EULA=TRUE \
    ONLINE_MODE=FALSE \
    USE_AIKAR_FLAGS=TRUE \
    PATCH_DEFINITIONS=/config-patches \
    ENABLE_COMMAND_BLOCK=TRUE \
    MOTD="SpaceMC Minecraft development server!" \
    JVM_OPTS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005" \
    MEMORY=2G

EXPOSE 5005

VOLUME ./target /target

COPY config-patches /config-patches
COPY --chmod=755 entrypoint* /

ENTRYPOINT ["sh","/entrypoint"]