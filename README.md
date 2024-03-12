# WIP - restrictionsEscaper
This (the installer) doesn't work for now. Only core script `traffic.sh` works if you do some modifs to it

Not related to iOS jailbreaking in any term. Move away if that's why you are here.

You might wanna get some commands from there for your own "educational" purposes haha :)

Escape restrictions imposed by your institution using ssh


## Howto

Download the `installer.sh` shell script on your machine and run it.

It should do things by itself.

If you encounter a permission error, paste the script content in a terminal that support multi-line input (warp for instance)

Once it's done, reboot your computer.

You can use a shortcut to quickly launch Edge if needed.

Here is the command (you can replace edge by chrome)
```
open -a "Microsoft Edge" --args --proxy-server=socks5://127.0.0.1:8080
```




## Requirements
You need a SSH server. The closest to you is the better.
You need an unblocked connection to Github for the script to self-update itself.

You also need Edge or any chromium based browser.
This was only tested on Mac and will only work on Mac for now.

## Backstory

Was messing around with my personal web server (hosted at home) and needed to access something on my network that required me to setup some kind of entry in my network.


I was working on my school computer so WireGuard wouldn't work on there (they blocked it)


Not rlly an exploit at all, more of a technique.


Turns out my school doesn't block port 22. So you proxy everything from your computer to your server lmao

## Credits
c22dev - Finding the method

[DougDougCool](https://github.com/DougDougCool) - Tester

TravisBiscotte - Tester

