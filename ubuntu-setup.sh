#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install curl zsh vim git ruby 

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

