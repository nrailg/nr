#!/usr/bin/env ruby
# encoding: utf-8

# This script remove existing rcs and git repo, then recover from
# github.
#
# TODO: Raise an exception when fail to `cp`.
# TODO: Share functions with recover-online.rb.

def recover_rcs
  rcs = ['.bashrc', '.zshrc', '.gitignore', '.gitconfig',
         '.gdbinit', '.vimrc']
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
end

def main
  recover_rcs; recover_git; recover_vim
end
main

__END__
