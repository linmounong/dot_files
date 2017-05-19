#!/bin/bash
# Exit on error #
set -e

WORKDIR=~/programs
TMUX_VERSION=2.2

# Clean up #
# Create our directories #
cleanup() {
  rm -rf $WORKDIR/libevent
  rm -rf $WORKDIR/ncurses
  rm -rf $WORKDIR/tmux
  mkdir -p $WORKDIR/test
  mkdir -p $WORKDIR/libevent
  mkdir -p $WORKDIR/ncurses
  mkdir -p $WORKDIR/tmux
}

############
# libevent #
############
do_libevent() {
  cd $WORKDIR/test
  curl -LO https://github.com/downloads/libevent/libevent/libevent-2.0.19-stable.tar.gz
  tar xvzf libevent-2.0.19-stable.tar.gz
  cd libevent-*/
  ./configure --prefix=$WORKDIR/libevent --disable-shared
  make
  make install
}

############
# ncurses  #
############
do_ncurses() {
  cd $WORKDIR/test
  wget ftp://ftp.gnu.org/gnu/ncurses/ncurses-5.9.tar.gz
  tar xvzf ncurses-5.9.tar.gz
  cd ncurses-5.9
  ./configure --prefix=$WORKDIR/ncurses LDFLAGS="-static"
  make
  make install
}

############
# tmux     #
############
do_tmux() {
  cd $WORKDIR/test
  wget -O tmux-${TMUX_VERSION}.tar.gz http://github.com/tmux/tmux/releases/download/${TMUX_VERSION}/tmux-${TMUX_VERSION}.tar.gz
  tar xvzf tmux-${TMUX_VERSION}.tar.gz
  cd tmux-${TMUX_VERSION}

  # open configure and find the line that says:
  # PKG_CONFIG="pkg-config --static"
  # And comment it out:
  # #PKG_CONFIG="pkg-config --static"
  sed -i.bak 's/PKG_CONFIG="pkg-config --static"/# \0/' configure

  # Build #
  CFLAGS="-I$WORKDIR/libevent/include -I$WORKDIR/ncurses/include" \
  LDFLAGS="-static -L$WORKDIR/libevent/lib -L$WORKDIR/libevent/include -L$WORKDIR/ncurses/lib -L$WORKDIR/ncurses/include" \
  PKG_CONFIG=/bin/false \
    ./configure \
    --prefix=$WORKDIR/tmux \
    --enable-static

  CPPFLAGS="-I$WORKDIR/libevent/include -I$WORKDIR/ncurses/include" \
  LDFLAGS="-static -L$WORKDIR/libevent/lib -L$WORKDIR/libevent/include -L$WORKDIR/ncurses/lib -L$WORKDIR/ncurses/include" \
    make

  cp tmux ~/bin/tmux
}

cleanup
do_libevent
do_ncurses
do_tmux
