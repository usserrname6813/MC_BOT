#!/bin/bash

# Install Node.js if it's not installed
if ! command -v node &> /dev/null; then
    echo "Node.js not found. Installing Node.js..."
    curl -fsSL https://deb.nodesource.com/setup_14.x | bash -
    apt-get install -y nodejs
else
    echo "Node.js is already installed."
fi

# Start the Node.js bot
if [ -f "index.js" ]; then
    echo "Starting the Node.js bot..."
    node index.js &  # Run the bot in the background
else
    echo "index.js file not found!"
    exit 1
fi

# Run the Streamlit app
streamlit run app.py
