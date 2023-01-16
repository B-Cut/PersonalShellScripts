#!/bin/bash
mkdir /tmp/discord
cd /tmp/discord

wget -O discord.tar.gz "https://discord.com/api/download?platform=linux&format=tar.gz" 
tar -xvzf discord.tar.gz


sudo mv Discord /usr/share/discord
sed -i "s|Icon=discord|Icon=/usr/share/discord/discord.png|" /usr/share/discord/discord.desktop

sudo ln -sf /usr/share/discord/Discord /usr/bin/Discord
sudo ln -sf /usr/share/discord/discord.desktop /usr/share/applications

cd /tmp
rm -r /tmp/discord
