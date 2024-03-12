#!/bin/bash
sudo apt-get update
sudo apt-get install libpcap-dev libpcap0.8 libpcap0.8-dev -y

# Install sublist3r
sudo apt-get install sublist3r -y

# Install subfinder
sudo apt-get install subfinder -y

# Install curl
sudo apt-get install curl -y

# Check if Go is installed by running "go version" command
if ! command -v go &> /dev/null; then
    # Go is not installed, so proceed with installation
    wget https://go.dev/dl/go1.22.1.linux-amd64.tar.gz
    sudo rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.22.1.linux-amd64.tar.gz
    export PATH=$PATH:/usr/local/go/bin
    echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.zshrc
    echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
    rm go1.22.1.linux-amd64.tar.gz
    
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

# Install naabu
go install -v github.com/projectdiscovery/naabu/v2/cmd/naabu@latest

# Install massdns
git clone https://github.com/blechschmidt/massdns.git
cd massdns
make
sudo cp -r bin/* /usr/local/bin/
cd ..
rm -rf massdns

# Install puredns
go install github.com/d3mondev/puredns/v2@latest
export PATH=$PATH:$(go env GOPATH)/bin
echo "export PATH=$PATH:$(go env GOPATH)/bin" >> ~/.bashrc
echo "export PATH=$PATH:$(go env GOPATH)/bin" >> ~/.zshrc
