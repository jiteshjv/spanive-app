#!/bin/bash

# Spanive App Setup Script
echo "Setting up Spanive App for iOS..."

# Check for Node.js
if ! command -v node &> /dev/null; then
    echo "Node.js is not installed. Please install Node.js and npm first."
    echo "Visit https://nodejs.org/ to download and install."
    exit 1
fi

# Check for Xcode
if ! xcode-select -p &> /dev/null; then
    echo "Xcode is not installed or not configured properly."
    echo "Please install Xcode from the App Store and run 'xcode-select --install'"
    exit 1
fi

# Check for CocoaPods
if ! command -v pod &> /dev/null; then
    echo "CocoaPods is not installed. Installing now..."
    sudo gem install cocoapods
    if [ $? -ne 0 ]; then
        echo "Failed to install CocoaPods. Please install manually: sudo gem install cocoapods"
        exit 1
    fi
fi

# Install npm dependencies
echo "Installing NPM dependencies..."
npm install

# Add iOS platform
echo "Adding iOS platform..."
npx cap add ios

# Sync web content to native project
echo "Syncing web content to native project..."
npx cap sync

echo "Setup complete!"
echo "To open the project in Xcode, run: npm run open:ios"
echo "To build for iOS, run: npm run build:ios"
echo "For TestFlight submission, follow the instructions in README.md"