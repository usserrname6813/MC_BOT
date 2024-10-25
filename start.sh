#!/bin/bash

# Install Node.js if it's not installed
if ! command -v node &> /dev/null
then
    echo "Node.js not found. Installing..."
    curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
    sudo apt-get install -y nodejs
else
    echo "Node.js is already installed."
fi

# Install npm dependencies
npm install

# Run the Streamlit app
streamlit run app.py
