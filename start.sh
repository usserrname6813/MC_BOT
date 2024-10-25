#!/bin/bash

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "Node.js not found. Installing Node.js..."
    curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
    apt-get install -y nodejs
else
    echo "Node.js is already installed."
fi

# Install npm dependencies for the bot
npm install

# Start the Node.js bot
npm start &  # Run the bot in the background

# Run the Streamlit app
streamlit run app.py
