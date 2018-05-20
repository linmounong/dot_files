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
* logitech options
  http://support.logitech.com/en_us/software/options
* setpoint
  http://support.logitech.com/en_us/software/setpoint

# mac

* bettertouchtool
  https://www.boastr.net/
* iterm2
  https://www.iterm2.com/downloads.html
* homebrew
  `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
* istat menus
  https://bjango.com/mac/istatmenus/
* mycloud sync
  https://support.wdc.com/downloads.aspx?p=266&lang=en


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

# nvidia
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update
# for 1080ti
sudo apt-get install nvidia-384
# reboot
# to remove
#   sudo apt-get purge nvidia*

# cuda
# https://gist.github.com/wangruohui/df039f0dc434d6486f5d4d098aa52d07#install-nvidia-graphics-driver-via-apt-get
# https://developer.nvidia.com/cuda-80-ga2-download-archive
wget https://developer.nvidia.com/compute/cuda/8.0/Prod2/local_installers/cuda_8.0.61_375.26_linux-run
chmod +x cuda_8.0.61_375.26_linux-run
./cuda_8.0.61_375.26_linux-run --extract=$PWD
sudo ./cuda-linux64-rel-8.0.61-21551265.run
sudo ./cuda-samples-linux-8.0.61-21551265.run
wget https://developer.nvidia.com/compute/cuda/8.0/Prod2/patches/2/cuda_8.0.61.2_linux-run
chmod +x cuda_8.0.61.2_linux-run
sudo ./cuda_8.0.61.2_linux-run

# g++-4.9
sudo add-apt-repository ppa:ubuntu-toolchain-r/test
sudo apt-get update
sudo apt-get install g++-4.9
```
