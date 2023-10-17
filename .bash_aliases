# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias branchList='git for-each-ref --sort=committerdate refs/heads/ --format='\''%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'\'''
alias c='tmux show-buffer|xclip -selection "clipboard" -i'
alias cdj='cd /home/jhylands/Documents'
alias cdd='cd /home/jhylands/Downloads'
alias dps='docker ps|echo -e $(sed "s/^\(\w\+\)\s\+\(\(\w\|:\|\.\|\/\)\+\).*\(  .* ago\).*$/\\\\n\\\\e[32m\1\\\\e[0m\\\\t\\\\e[33m\2:\\\\e[34m\4\\\\e[0m/g")'
alias egrep='egrep --color=auto'
alias exit='echo '\''Please use the tmux command prefix+X or escape to stop this alias.'\'''
alias fgrep='fgrep --color=auto'
alias findpy='find . -type f -name "*.py" -print0 | xargs -0 grep --color'
alias start_db='export db=$(docker ps| grep mysql|sed "s/\(\w\+\) .*/\1/g");docker start $db'
alias goagain='sudo bash build/install-python-packages.sh; sudo supervisorctl restart all'
alias grab='export val=$(echo "$list"|tac | sed -n "$line_no p")'
alias grep='grep --color=auto'
alias isedalotofthings='sed "s/^\s*\([0-9]\+\)/\\\\e[32m\1\\\\e[0m/g"'
alias push="git push origin \$(git rev-parse --abbrev-ref HEAD)"

# some more ls aliases
alias l='ls -CF'
alias la='ls -A'
alias ld='ls */ -d'
alias lgrab='export list=$($1 |tail -n 10|grep "^\s\+\(\w\|-\)\+" -o);echo "$list"|tac |cat -b| tac'
alias ll='ls -alFh'
alias ls='ls --color=auto'
alias lsd='ls */ -dal'

alias nettop='slurm -i wlp3s0'
alias numbercolor='echo -e "$(isedalotofthings)"'
alias open='nautilus'
alias py2='source ~/Documents/py2env/bin/activate'
alias py3='source ~/.bashrc'
alias st='git status -uno'
alias pt='ptpython'
alias pycharm="bash ~/Downloads/pycharm-community-2020.1.1/bin/pycharm.sh&"
alias runsftp="bash ~/Downloads/FileZilla3/bin/filezilla.sh&"
alias describebranch="git config branch.$(git rev-parse --abbrev-ref HEAD).description"
alias config='/usr/bin/git --git-dir=/home/jhylands/.cfg/ --work-tree=/home/jhylands'
alias bat='batcat'
