#!/bin/bash

# Set Minecraft version
MC_VERSION="${MC_VERSION:-1.14.4}"


# Download Minecraft
curl -o vendor/minecraft_server.jar "https://cdn.getbukkit.org/spigot/spigot-1.14.4.jar"
