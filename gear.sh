#!/bin/bash
curl -s https://raw.githubusercontent.com/exfeddix17/cryptohodl/main/cryptohodl.sh | bash && sleep 2

sudo apt-get update -y
sudo apt-get intall wget curl jq tree -y
wget https://builds.gear.rs/gear-nightly-linux-x86_64.tar.xz && \
tar xvf gear-nightly-linux-x86_64.tar.xz && \
rm gear-nightly-linux-x86_64.tar.xz && \
chmod +x gear-node
sudo apt install -y clang build-essential
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
rustup toolchain add nightly
rustup target add wasm32-unknown-unknown --toolchain nightly
git clone https://github.com/gear-tech/gear.git
cd gear
cargo build -p gear-node --release

