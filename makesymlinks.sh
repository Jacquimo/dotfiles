#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles should only be run once.
# This setup is taken from http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
# 	For further help or to start with fresh code, follow the steps detailed in the link.
#
# To add files to be included in the backup of this repo, follow these commands and instructions:
# 		cd ~
# 		mv .someDotFile dotfiles/someDotFile
# 				# Notice how in the previous command, the "." character was dropped. This is for convenience, but the script will expect
# 				# the files in the ~/dotfiles/ folder to not have a leading "." character.
# 		Add "someDotFile" name to the "files" variable (space separated list) defined below, excluding the leading "." character
#
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="bash_profile"    					# list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
