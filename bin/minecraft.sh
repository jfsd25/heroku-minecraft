#!/bin/bash

# Create server config
echo "server-port=25566" > /app/server.properties

# Sync initial files
ruby bin/sync.rb init

# Print logs to STDOUT
touch server.log
nice tail -f server.log &

# Run minecraft
java -Xmx2048M -Xms2048M -jar vendor/minecraft_server.jar nogui
