#!/bin/bash

echo "Starting Node.js application..."

cd /home/ubuntu/node-app

# Install dependencies
npm install

# Kill old process (if running)
pkill node || true

# Start app
nohup node app.js > output.log 2>&1 &
