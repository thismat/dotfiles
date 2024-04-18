#!/bin/zsh

zprofile=${0:a:h}/.zprofile
zshrc=${0:a:h}/.zshrc

ln -s $zprofile ~/.zprofile
ln -s $zshrc ~/.zshrc
