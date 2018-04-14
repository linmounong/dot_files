# dot files and new computer setup guide

```
# dot files
./all.sh
```

# all platforms

* docker
  https://www.docker.com/community-edition#/download
  * linux `curl -fsSL https://get.docker.com/ | sh`
  * mac https://store.docker.com/editions/community/docker-ce-desktop-mac
* pycharm
  https://www.jetbrains.com/pycharm/download
* chrome
  https://www.google.com/chrome/browser/desktop/
* chrome alternative 
  * chromium (linux)
    `sudo apt-get install chromium-browser`
  * chrome canary (mac)
    https://www.google.com/chrome/browser/canary.html
* shadowsocks
  https://shadowsocks.org/en/download/clients.html
* sogou pinyin
  * linux
    http://pinyin.sogou.com/linux/?r=pinyin
  * mac
    http://pinyin.sogou.com/mac/?r=pinyin
  * windows
    http://pinyin.sogou.com/
* setpoints
  http://support.logitech.com/en_us/software/setpoint

# mac

* bettertouchtool
  https://www.boastr.net/
* iterm2
  https://www.iterm2.com/downloads.html
* homebrew
  `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

* [logitech options](http://support.logitech.com/en_us/software/options) and

# ubuntu

* (ubuntu) screen share [link](https://askubuntu.com/questions/463486/can-no-longer-use-screen-share-to-connect-mac-to-ubuntu-since-upgrading-to-14-04)

```bash
sudo apt-get install curl vim gcc libffi-dev libffi-dev libssl-dev build-essential

# sysmon
sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor
sudo apt-get update
sudo apt-get install indicator-sysmonitor

# ovpn
sudo apt-get install network-manager-openvpn-gnome

# nvidia and cuda
# https://gist.github.com/wangruohui/df039f0dc434d6486f5d4d098aa52d07#install-nvidia-graphics-driver-via-apt-get
sudo apt install nvidia-modprobe nvidia-384
wget http://developer.download.nvidia.com/compute/cuda/7.5/Prod/local_installers/cuda_7.5.18_linux.run
chmod +x cuda_7.5.18_linux.run
./cuda_7.5.18_linux.run --extract=$HOME
sudo ./cuda-linux64-rel-7.5.18-19867135.run

# g++-4.9
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install g++-4.9
```
