# SpaceMC Docker
Docker image used in all SpaceMC minecraft plugins. <br/>
We are using awesome [itzg/minecraft-server](https://docker-minecraft-server.readthedocs.io/en/latest/) for PaperMC server in Docker.

> [!IMPORTANT]  
>
> This image is created for our use, so we won't support features that we don't need.<br/>
> So we only support **Maven** for automatic file movement.
>

## Usage
```yml
version: '3.3'
services:
    minecraft:
        image: norbiros/spacemc:latest
        environment:
            VERSION: 1.20.1
            JAR_NAME: <Your compiled plugin name prefix>
        ports:
            - "25565:25565"
            - "5005:5005"
        volumes:
            - ./server:/data
            - ./target:/target
        stdin_open: true
        tty: true
        restart: "no"
```
In `enviroment` section you can use [itzg/minecraft-server's variables](https://docker-minecraft-server.readthedocs.io/en/latest/variables/)

## Features
 - Bukkit and spigot config patches
 - A lot of environment variables for easier development
 - Move compiled plugin to `plugins/`
 - Support for Java Debugger

## EULA
By using this image you agree to Minecraft's EULA!
