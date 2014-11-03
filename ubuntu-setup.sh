#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install curl zsh vim git ruby screen tmux

# Install build environment
sudo apt-get -y install build-essential

# Git configuration setup
git config --global user.name "Wataru Noguchi"
git config --global user.email "wnoguchi.0727@gmail.com"
git config --global core.editor 'vim -c "set fenc=utf-8"'
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global push.default simple
git config --global core.precomposeunicode true
git config --global core.quotepath false

# Install setuptools(easy_install)
wget https://bootstrap.pypa.io/ez_setup.py -O - | sudo python

# Install pip
sudo easy_install pip

# Install AWS CLI
sudo pip install awscli

# Install jq JSON parser
sudo curl -o /usr/local/bin/jq http://stedolan.github.io/jq/download/linux64/jq && sudo chmod +x /usr/local/bin/jq

# for rbenv dependent packages
sudo apt-get -y install libssl-dev zlib1g-dev libreadline-dev libmysqlclient-dev sqlite3 libsqlite3-dev g++

# clone rbenv and ruby-build
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

