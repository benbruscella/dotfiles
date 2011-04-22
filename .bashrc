# Command Line Tools
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'

#Git and svn
alias gd="git diff -w | mate"
alias svnaddr="svn status | grep "^\?" | awk '{print $2}' | xargs svn add"

#Projects
alias pin="cd ~/Projects/webmoco/onpin.com"
alias aus="cd ~/Projects/tlb/ausrates"
alias scan="cd ~/Projects/tlb/Scanoutlet"
alias eg="cd ~/Projects/webmoco/egrowers"
alias icp="cd ~/Projects/d27/inlink-cp/trunk"
alias trolley="cd ~/Projects/tlb/trolley-rescue"


#Terminal
function tt() { echo -n -e "\033]0;$@\007";}

# Environment Variables
export EDITOR=mate
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS='gxfxcxdxbxegedabagacad'

# PATH mods
export PATH=/usr/local/mysql-5.1.46-osx10.6-x86_64/bin:$PATH


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.
