#!/bin/bash

dir=~/.dotfiles
old_dir=~/.dotfiles_backup
files="emacs.d bash_profile"

echo -n "Creating $old_dir to backup existing dotfiles in ~/ ... "
mkdir -p $old_dir
echo "done"


echo -n "Changing to the $dir directory ... "
cd $dir
echo "done"

for file in $files; do
    echo -n "Moving existing $file from ~/ to $old_dir ..."
    mv ~/.$file ~/.dotfiles_backup/
    echo "done"
    echo "Creating symlink to $file in ~/ ... "
    ln -s $dir/$file ~/.$file
done
