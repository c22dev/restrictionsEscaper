#!/bin/bash
# Constantin CLERC - v0.1 - 12.03.2024

if [ ! -e "$HOME/.restrEscape" ]; then
  cd "$HOME/Library/LaunchAgents/"
  curl -L https://raw.githubusercontent.com/c22dev/restrictionsEscaper/main/ch.cclerc.proxystart.plist > ch.cclerc.proxystart.plist
  awk -v home="$HOME" '{gsub("/Users/etudiant", home)} 1' "$HOME/Library/LaunchAgents/ch.cclerc.proxystart.plist" > tmpfile && mv tmpfile "$HOME/Library/LaunchAgents/ch.cclerc.proxystart.plist"
  echo "Installed daemon launcher"
fi
# First of all, let's prepare.
cd $HOME
mkdir .restrEscape
cd .restrEscape
# We download stuff onto our machine (if absent it'll create it, else it'll delete it)
curl -L https://raw.githubusercontent.com/c22dev/restrictionsEscaper/main/traffic.sh > traffic.sh

echo "--User Config--"
echo "Please enter your SSH server address:"
read url
echo "Please enter your username on this server:"
read username
echo "Please enter your password for this user (won't be checked nor encrypted):"
read password

echo "$url" > server
echo "$username" > user
echo "$password" > pass

echo "Done. Please reboot your computer. Opened on port 8080 by default."
