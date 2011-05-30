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
alias onpin="cd ~/Projects/Assembla/onpin.com"
alias ausrates="cd ~/Projects/Assembla/ausrates"
alias scanoutlet="cd ~/Projects/GitHub/Scanoutlet"
alias trolleyrescuei="cd ~/Projects/Assembla/fault-hub/iPhone/TrolleyRescue"
alias trolleyrescuew="cd ~/Projects/Assembla/trolley-rescue"
alias livescenew="cd ~/Projects/Github/LiveScene-Web"
alias livescenei="cd ~/Projects/Github/LiveScene-iPhone"

#Terminal
function tt() { echo -n -e "\033]0;$@\007";}

# Environment Variables
export EDITOR=mate
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS='gxfxcxdxbxegedabagacad'

# PATH mods
export PATH=/usr/local/mysql-5.1.46-osx10.6-x86_64/bin:/user/bin:$PATH


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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # This loads RVM into a shell session.
