# SpaceMC Docker
Docker image used in all SpaceMC minecraft plugins. <br/>
We are using awesome [itzg/minecraft-server](https://docker-minecraft-server.readthedocs.io/en/latest/) for PaperMC server in Docker.

> **Important**
>
> This image is created for our use, so we won't support 
> features that we don't need. So we only support **Maven**
> for automatic file movement.
>

## Usage
```yml
version: '3.3'
services:
    minecraft:
        image: spacemmocore
        environment:
            VERSION: 1.20.1
            JAR_NAME: <You output JAR file prefix>
            UID: 1001
            GID: 1001
        ports:
            - "25565:25565"
        volumes:
            - ./server:/data
        stdin_open: true
        tty: true
        restart: "no"
```

## Features
 - Bukkit and spigot config patches
 - A lot of environment variables for easier development
 - Move compiled plugin to `plugins/`
 - Support for Java Debugger