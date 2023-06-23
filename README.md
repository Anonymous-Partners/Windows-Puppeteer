# Windows Puppeteer
## Installation
```
Setup controller.bat and server.py on a web hosting service
```
```
Update the websites in the code to where your files are being hosted
```
```
Run client.py on the controlling server
```
```
Execute run.bat on the target computer 
```
```
Have fun!
```
## Disclaimer
This is not intended for malicious purposed. I am not liable for any misuse of the program. You are entirely responsible for your actions and misuse of this program. This program was created and intended for educational purposes and the remote monitoring of computers you own or have permission to use. Malicious use of this program could lead to jailtime. Think before you try to play a "harmless prank" on someone.

## How it works
The premise is relatively simple: setup a websocket connection between 2 computers and send cmd commands from the controlling computer to the target computer. This is achieved by a batch file installing all of the necissary files on the target computer and then executing the listener server that can recieve commands. The program will automatically check to see if python is installed and will install it autonomously if it isn't. This makes the program very easy to use for development and server usecases. Due to the nature of how this program doesn't really try to hide itself, attempting to establish a reverse shell on a computer you are not promitted to use with this program is a bad idea. Their antivirus will 100% pick up what this program is doing and will shut it down. Additionally, you will have committed a cyber crime and may face jailtime. Believe it or not, attempting to gain access to someone else's properly without their consent is illegal. The fact that I have to state this is honestly quite pathetic. Once again, only use this program for educational purposes or for development usecases (servers, etc). Setting up a reverse shell without permission is a cryber crime. DO NOT TRY IT! READ THE DISCLAIMER! I AM NOT LIABE FOR YOUR MISUSE OF THIS SOFTWARE!

## How does Anonymous Partners use this software
We use this software to speed up the setup of new servers. Our setup process is quite complex and being able to control multiple servers at once from a single laptop/PC is extremely useful.

## Use cases
<ul>
  + Remotely monitoring a windows server
</ul>
<ul>
  + Remotely making changes to your home computer
</ul>
<ul>
  + Converting your old windows computer into a home NAS
</ul>
<ul>
  + Penatration testing
</ul>
<ul>
  + Antivirus testing (reverse shell detection)
</ul>
