#!/usr/bin/env ruby
# encoding: utf-8

load '.recover.rb'

def recover_vim
  `rm -rf ~/.vim`
  `cp -r .vim ~`
end

def main
  recover_rcs; recover_git; recover_vim
end
main

__END__
