# set the path up
PATH="/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/mysql/bin:$PATH"

PROMPT_COLOR='33;33m'
export LC_CTYPE=en_US.UTF-8
export SVN_EDITOR='mate -w'

# customise the prompt
#export PS1='\u@\h \W $ '
# export PS1="\[\e[${PROMPT_COLOR}\]\u@\h:\W\$ \[\e[0m\]"

# general aliases
alias home='cd ~'
# alias ls='ls -lah'
alias ls='ls -Gpx'
alias c='clear'
alias ..='cd ..'
alias top='top -ocpu'
alias ebash='vim ~/.bash_profile'
alias rbash='source ~/.bash_profile'
alias o='open .'

# emacs
alias emacs='open -a Aquamacs\ Emacs'
# vim
alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
alias evim='vim ~/.vimrc'

# textmate
alias tm='mate .'
alias rtm="mate app config db lib public spec"

# svn
alias svnclear='find . -name .svn -print0 | xargs -0 rm -rf'
alias svnaddall='svn status | grep "^\?" | awk "{print \$2}" | xargs svn add'
alias svndelall='svn status | grep "^\!" | awk "{print \$2}" | xargs svn del'
alias svnall='svnaddall;svndelall'
alias svnc='svn ci -m'

# ruby
alias irb='irb --readline -r irb/completion --simple-prompt'

# rails
alias sc='ruby script/console'
alias ss='ruby script/server'
alias sg='ruby script/generate'

# Setting PATH for MacPython 2.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH

# firefox
alias ff='open -a Firefox'

# webfirm proxy
alias wfproxy='export http_proxy=http://colinc:colinc00@webfirm:8080'

# ssh
alias nibler='ssh colin@nibler'
alias turkish='ssh -l webfirm -p 2020 turkish.usa.ansearch.com'
alias rdev='ssh colin@203.32.125.167'
alias demo='ssh colin@203.32.125.174'
alias live='ssh colin@203.32.125.171'

# git
source ~/.git-completion.bash
export PS1='\[\e[33;33m\]\u@\h:\W$(__git_ps1 "(%s)")\$ \[\e[0m\]'
alias gitup='git branch | grep \* | awk "{print \$2}" | xargs git push origin'
alias gitdn='git branch | grep \* | awk "{print \$2}" | xargs git pull origin'
# alias gitc='git commit -a -m'
# alias gits="git status"
# alias gitco="git checkout"

# rdoc
alias hdoc='rdoc --force-update --inline-source --line-numbers --fmt ajax lib/'

# hackless
alias ht="cd ~/work/hackless; autotest"
alias hv="cd ~/work/hackless; vim"
alias h="cd ~/work/hackless"
alias hit="cd ~/www/hackless_interface; autotest"
alias hiv="cd ~/www/hackless_interface; vim"
alias hi="cd ~/www/hackless_interface"
alias showcov="rake html_cov;ff coverage/index.html"

# doit
alias doit="cd ~/programming/rails/doit/"

#wiki
alias wiki="cd ~/Documents/wiki; vim ."

test -r /sw/bin/init.sh && . /sw/bin/init.sh
