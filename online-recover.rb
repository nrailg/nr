#!/usr/bin/env ruby
# encoding: utf-8

# This script remove existing rcs and git repo, then recover from
# github.
#
# TODO: Raise an exception when fail to `cp`.

def recover_rcs
  rcs = ['.bashrc', '.zshrc', '.gdbinit', '.vimrc']
  rcs.each do |rc|
    cmd = "rm ~/#{rc}; cp ./#{rc} ~"
    err = system cmd
  end
end

def recover_git
  `rm -rf ~/.git`
  `cp -r .git ~`
end

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
