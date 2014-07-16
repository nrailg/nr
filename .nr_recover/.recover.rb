#!/usr/bin/env ruby
# encoding: utf-8

# TODO: Raise an exception when fail to `cp`.

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

__END__
