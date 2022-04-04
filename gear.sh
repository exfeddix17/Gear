#!/bin/sh

sudo apt update -y
sudo apt install curl -y
sudo apt install wget jq tree -y

curl -s https://raw.githubusercontent.com/exfeddix17/cryptohodl/main/cryptohodl.sh | bash && sleep 2

wget https://builds.gear.rs/gear-nightly-linux-x86_64.tar.xz && \
tar xvf gear-nightly-linux-x86_64.tar.xz && \
rm gear-nightly-linux-x86_64.tar.xz && \
chmod +x gear-node
sudo apt install -y clang build-essential
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
