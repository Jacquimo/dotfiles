# ---------------------------------
# Author: Gray Houston
# contact: gray.s.houston@gmail.com
# ---------------------------------

# Important locations
export bp="$HOME/.bash_profile"
export home="$HOME/home"	# The home location of my files/filesystem hierarchy
						 							# I treat this like the "true" home directory of file system for my user account, as accessed through
													# the terminal.
export usb="/Volumes"
export desk="$HOME/Desktop"
export lab="$home/classes/cs390/hmwk/assignment5"
export dwn="$HOME/Downloads"
export trh="$HOME/.trash"
export dotfiles="$HOME/dotfiles"
export data="ghousto@data.cs.purdue.edu" # CS Department "Data" remote server to ssh into
export drive="$HOME/Google Drive" # Quotation marks must be used with this var b/c of space. E.g. `c "$drive"
export usefulEmacs="$dotfiles/usefulEmacsInfo.txt"

# Folder locations for classes
export class="$home/classes"
export ai="$class/cs471"
export tmser="$class/stat420"
export linear="$class/stat512"
export compiler="$class/cs352"
export work="$home/programming/projects/vitamin-builder"

# Startup companies file locations
export materialIonic="$home/programming/projects/material-ionic-titan-app"
export regularIonic="$home/programming/projects/regular-ionic-titan-app"
export regularTitanTemplates="$regularIonic/www/templates"
export vit="$home/programming/projects/vitamin-builder"

# Overwritten important environmental variables
export EDITOR="/usr/bin/emacs" # Set default terminal editor to Emacs

# Arne's epic timestamped prompt with return status indicator and status-colored (green if fresh, or red if unstaged, or yellow if
# staged) git branch:
export PS1='\[\e[01;30m\]\t`if [ $? = 0 ]; then echo "\[\e[32m\] ✔ "; else echo "\[\e[31m\] ✘ "; fi`\[\e[00;37m\]\u\[\e[01;37m\]:\n`[[ $(git status 2> /dev/null | head -n2 | tail -n1) != "# Changes to be committed:" ]] && echo "\[\e[31m\]" || echo "\[\e[33m\]"``[[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] || echo "\[\e[32m\]"`$(__git_ps1 "(%s)\[\e[00m\]")\[\e[01;34m\]\w\[\e[00m\]: '
PS1="\n$PS1\n$ "



# ----------
# LS ALIASES
# ----------
alias .='ls'
alias .a='. -A'
alias .l='. -l'
alias .al='. -al'
alias .la='.al'
alias .le='. | less'



# ----------------
# GENERAL COMMANDS
# ----------------
alias h='history'
alias p='pwd'
alias src='source'
alias l='less'
alias all='alias'
alias alll='all | l'
alias clr='clear'
alias atom='open -a Atom'
alias a='atom'
alias g='git'
alias sub='open -a "Sublime Text"'
alias s='sub'
alias py3='python3'
alias brackets='open -a Brackets'
alias b='brackets'
alias first='head -n 1' # output first line of file
alias proc='ps -A'
alias rmr='rm -r'
alias mapitap='mount -t smbfs //ghousto@myhome.itap.purdue.edu/myhome/ghousto ~/ghousto'
alias mk='make'
alias clean='make clean'
alias o='open'
alias down='curl -O' # Download a file from the internet
alias jsc='/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources/jsc'
alias rmd='rm -r' # Removes directory and all sub-files/sub-directories contained within.
				  				# Deletes even if the parameter is a file and not a directory.
alias dv='unset' # This is an alias for the command that deletes exported environmental variables
alias cem='cat $usefulEmacs'
alias ceml='cem | l'

# commands to test internet connection by pinging Google
alias tg='ping 8.8.8.8'
alias tg2='ping 8.8.4.4'
alias tdns='ping www.google.com'
alias td=tdns

# Class specific commands
alias oai='o $ai/"Artificial Intelligence A Modern Approach (3rd Edition).pdf"'
alias otm='o $tmser/"Chris Chatfield The Analysis Of Time Series - An Introduction  2003.pdf"'
alias ocmp='o $compiler/Compilers-Principles-Techniques-and-Tools-\(2nd-Edition\).pdf'
alias oln='o $linear/"Applied-Linear-Statistical-Models-5th.pdf"'



# -------------
# IONIC ALIASES
# -------------
alias browse='ionic serve -l'
alias emulate='ionic emulate ios --target="iPhone-6s"'



# ------------
# ATOM ALIASES
# ------------
alias abp='atom $bp'
alias arm='a $(g rev-parse --show-toplevel)/README.*' # open the git repo's README
alias aem='a $usefulEmacs'



# -----------
# GIT ALIASES
# -----------
alias gc='g commit -m'
alias gm='gc'
alias ga='g add .'
alias st='g status'
alias gps='g push'
alias gpl='g pull'
alias gbi='g branch'
alias gk='g checkout'
alias gam='g commit --amend'
alias glg='g log'
alias gaam='ga; gam'



# ----------
# CD ALIASES
# ----------
alias c='cd'
alias ..='c ..'

# Key locations in file hierarchy
alias ch='c $home'
alias cdesk='c $desk'
alias clab='c $lab'
alias clb='clab'
alias cdw='c $dwn'
alias ctrh='c $trh'
alias cdt='c $dotfiles'
alias cdr='c "$drive"'

# Classes Folders
alias ccl='c $class'
alias cai='c $ai'
alias ctm='c $tmser'
alias cln='c $linear'
alias cmp='c $compiler'
alias cwk='c $work'

# Startup project folders
alias cmi='c $materialIonic'
alias cri='c $regularIonic'
alias crt='c $regularTitanTemplates'
alias cvt='c $vit'
alias cti='c "$drive"/Titan\ Developmental/'



# -----------
# SSH ALIASES
# -----------
alias sdata='ssh $data'



# --------------
# SOURCE ALIASES
# --------------
alias sbp='src $bp'



# ----------------------------
# FINAL SETUP FOR THE TERMINAL
# ----------------------------
c $home # CD into $home directory before prompt is sent

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
src ~/.git-prompt.sh



# --------------------------------
# AUTOMATICALLY GENERATED NVM CODE
# --------------------------------
# Setup NVM stuff
export NVM_DIR="/Users/grayhouston/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# More NVM stuff
if [ -s ~/.nvm/nvm.sh ]; then
	NVM_DIR=~/.nvm
	source ~/.nvm/nvm.sh
fi
