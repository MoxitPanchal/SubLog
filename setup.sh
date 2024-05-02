#!/bin/bash
sudo apt-get update
sudo apt-get install libpcap-dev libpcap0.8 libpcap0.8-dev jq sed -y

# Install sublist3r
sudo apt-get install sublist3r -y

# Install subfinder
sudo apt-get install subfinder -y

# Install curl
sudo apt-get install curl -y

# Check if Go is installed by running "go version" command
if ! command -v go &> /dev/null; then
    sudo apt install golang-go -y
        
    # Verify installation
    if ! command -v go &> /dev/null; then
        echo "Error: Go installation failed."
        exit 1
    else
        echo "Go installed successfully."
    fi
else
    echo "Go is already installed."
fi
if ! command -v naabu &> /dev/null; then
    # Install naabu
    go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
else
    echo "Naabu is already installed."
fi
if ! command -v puredns &> /dev/null; then
    # Install massdns
    sudo git clone https://github.com/blechschmidt/massdns.git
    cd massdns
    sudo make
    sudo cp -r bin/* /usr/local/bin/
    cd ..
    sudo rm -rf massdns

    # Install puredns
    go install github.com/d3mondev/puredns/v2@latest
    echo "export PATH=$PATH:~/go/bin" >> ~/.zshrc
    source ~/.zshrc

    if ! command -v puredns &> /dev/null; then
    echo "Error installing puredns!"
    else
    echo "Puredns installed successfully"
else
    echo "Puredns is already installed."
fi