#!/usr/bin/env ruby
# encoding: utf-8

# This script remove existing rcs and git repo, then recover from
# github.

load '.recover.rb'

def recover_vim
  `rm -rf ~/.vim`
  `cp -r .vim ~`
  `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
end

def main
  recover_rcs; recover_git; recover_vim
end
main

__END__
