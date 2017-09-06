My dot files (and more)

For a new system:

Install

* bash -- bash/setup.sh
* vim -- vim/setup.sh
* tmux -- tmux/setup.sh
* git -- git/setup.sh
* tools -- tools/setup.bash
* [bazel](http://bazel.io/docs/install.html)
* jdk8 -- see bazel
* [protobuf](https://github.com/google/protobuf)
* [pycharm](https://www.jetbrains.com/pycharm/download)
* [logitech options](http://support.logitech.com/en_us/software/options) and
  [setpoints](http://support.logitech.com/en_us/software/setpoint)
* [chrome](https://www.google.com/chrome/browser/desktop/) /
  chromium `sudo apt-get install chromium-browser` (linux) /
  [chrome canary](https://www.google.com/chrome/browser/canary.html) (mac)
* [bettertouchtool](https://www.boastr.net/) (mac)
* [shadowsocks](https://shadowsocks.org/en/download/clients.html)
* sogou pinyin [linux](http://pinyin.sogou.com/linux/?r=pinyin) /
  [mac](http://pinyin.sogou.com/mac/?r=pinyin) /
  [windows](http://pinyin.sogou.com/)
* [docker](https://docs.docker.com/linux/step_one/) `curl -fsSL https://get.docker.com/ | sh`

Set up

* .style.yapf
* bettertouchtool configs
* jetbrains configs
* (ubuntu) screen share [link](https://askubuntu.com/questions/463486/can-no-longer-use-screen-share-to-connect-mac-to-ubuntu-since-upgrading-to-14-04)

Ubuntu

```bash
sudo apt-get install curl vim gcc libffi-dev
sudo apt-get install libffi-dev libssl-dev build-essential
# And download python from python.org
# ./configure --enable-unicode=ucs4 --enable-optimizations --enable-pic && make -j8 && sudo make install
```
