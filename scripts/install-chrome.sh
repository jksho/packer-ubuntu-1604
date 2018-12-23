#!/bin/bash -eux
# Install Google Chrome

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sh -c 'echo "deb https://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
DEBIAN_FRONTEND=noninteractive apt-get -y update && apt-get -y install google-chrome-stable
