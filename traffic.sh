#!/usr/bin/expect -f
# Constantin CLERC - v0.1

# Read server name, username, and password from files
set server [exec cat $env(HOME)/.restrEscape/server]
set username [exec cat $env(HOME)/.restrEscape/user]
set password [exec cat $env(HOME)/.restrEscape/pass]

# Spawn SSH connection
spawn nohup ssh -D 8080 -C -N $username@$server

# Expect password prompt and send password
expect "assword:"
send "$password\r"

spawn echo "Enjoy ! made by c22dev - Port 8080"

interact
