# Command Line Tools
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l='ls -CF'
alias la='ls -A'
alias ll='ls -alF'

# Tim
alias timdeploy='cap production_waf deploy; cap deploy'
alias timdeploymigrations='cap deploy:migrations; cap production_waf deploy:migrations'

alias rs_tts="rails s"
alias rs_waf="rails s -e development_waf -p 3002"

alias rc_tts="rails s"
alias rc_waf="rails c development_waf"

# GIT
alias gd="git diff -w | mate"
alias gst="git status --porcelain"
alias gad="git add ."
alias gco="git commit -am "

# SVN
alias svnaddr="svn status | grep "^\?" | awk '{print $2}' | xargs svn add"

# BitBucket
alias bb="cd ~/Projects/BitBucket"
alias or="cd ~/Projects/BitBucket/cncr"
alias gg="cd ~/Projects/BitBucket/gourmet-goldmine"
alias lb="cd ~/Projects/BitBucket/logicbox"
alias sens="cd ~/Projects/BitBucket/sensonator"
alias sb="cd ~/Projects/BitBucket/smart-broker-web"
alias bcn="cd ~/Projects/BitBucket/bloggerconnect"
alias tts="cd ~/Projects/BitBucket/the-transfer-station"
alias waf="cd ~/Projects/BitBucket/wineandfoodhub"
alias n11="cd ~/Projects/BitBucket/net-101"

#Terminal
function tt() { echo -n -e "\033]0;$@\007";}

# Environment Variables
export EDITOR=mate
#export EDITOR="$HOME/bin/mate -w"
# -- Terminal White
# export CLICOLOR=1
# export LSCOLORS=ExFxCxDxBxegedabagacad
# -- Terminal Black
export CLICOLOR=1
# export LSCOLORS='gxfxcxdxbxegedabagacad'
export LSCOLORS='gxfxcxdxbxegedabagacad'

# PATH mods
export PATH=/usr/local/mysql-5.1.63-osx10.6-x86_64/bin:/user/bin:$PATH
#for symbolicatecrash
export PATH=/Developer/Platforms/iPhoneOS.platform/Developer/Library/PrivateFrameworks/DTDeviceKit.framework/Versions/A/Resources:$PATH
# for postgres
PATH=/usr/local/bin:$PATH
# for textmate 2
#PATH=~/bin:$PATH

# History
export HISTCONTROL=erasedups # Don't keep dupes
export HISTSIZE=10000        # Keep a shedload
shopt -s histappend          # Append, not overwrite

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[00;32m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Welcome Screen &
# System Information:
clear
echo -ne "${LIGHTRED}" "Hello, $USER";
echo -e "${LIGHTRED}" "Today is: \t${LIGHTGRAY}" `date`;
echo -e "${LIGHTRED}" "Kernel Information: \t${LIGHTGRAY}" `uname -smr`
echo -ne "${cyan}";uptime;echo ""
tt `pwd`

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

PATH=$PATH:$HOME/Dropbox/bin # Add Dropbox bin

PATH=$PATH:/usr/local/share/npm/bin/ # npm modules


export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/directory-you-do-development-in
source /usr/local/bin/virtualenvwrapper.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
