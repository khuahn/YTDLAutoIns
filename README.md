<b>YTDL Auto Installer for Terminal/Termux Android and Linux Distributions</b>
<br>
A lightweight shell script that automates setup of essential tools and dependencies for YouTube downloading, streaming, and video management. Designed to save time and eliminate repetitive manual installs — just run it on terminal/termux and you're good to go.
<br>
<br>
1. In terminal, just run: <BR>
```
curl -L -o ytsetup.sh https://raw.githubusercontent.com/khuahn/YTDLAutoIns/main/ytsetup.sh && chmod +x ytsetup.sh && ./ytsetup.sh
```
or with wget:
```
wget -O ytsetup.sh https://raw.githubusercontent.com/khuahn/YTDLAutoIns/main/ytsetup.sh && chmod +x ytsetup.sh && ./ytsetup.sh
```
2. Make sure terminal has access to storage:
```
termux-setup-storage
ls ~/storage/shared/
```
3. Copy Youtube link and use format below:
```
ytv https://m.youtube.com/watch?v=-RZUJVZ8rYs
```
or MP3
```
https://m.youtube.com/watch?v=-RZUJVZ8rYs
```
Your downloaded file will be in your Download folder. Enjoy!!!! 😊👏👍
