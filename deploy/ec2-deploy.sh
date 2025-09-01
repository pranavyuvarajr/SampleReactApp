#!/bin/bash

# Update the package index
sudo apt-get update

# Install Node.js and npm if not already installed
if ! command -v node &> /dev/null
then
    curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
    sudo apt-get install -y nodejs
fi

# Install Git if not already installed
if ! command -v git &> /dev/null
then
    sudo apt-get install -y git
fi

# Clone the repository (replace <your-repo-url> with your actual repository URL)
git clone <your-repo-url> satwik

# Navigate into the project directory
cd satwik

# Install project dependencies
npm install

# Build the React application
npm run build

# Serve the application (you can use serve or any other method)
npm install -g serve
serve -s build -l 3000

# Note: Make sure to configure your security group to allow traffic on port 3000
# and set up a reverse proxy if needed for production use.