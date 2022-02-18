# Long format list
alias ll="ls -la"
alias blck="black -l 79"
alias ls='ls --group-directories-first --color=auto'

# Print the public IP address
alias myip='curl ipinfo.io/ip'

# Make a directory and navigate into it
mkcd ()
{
  mkdir -p -- "$1" && cd -P -- "$1"
}

alias ssha='$(ssh-agent -s) && ssh-add ~/.ssh/id_ed25519_musicfox'

# add the berglas executable
alias berglas=/home/jason/go/bin/berglas

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# add better ls -d (directory) display
alias lsd='lsl'

# way better 'everything'-ish
alias lsl='echo "Files & Folders:" && ls -agh --color=auto --group-directories-first && echo "Current dir:" && pwd'

# git commands
gd() {
    git diff $1
}
gb() {
	git rev-parse --abbrev-ref HEAD
}
ga() {
	git add .
}
gc() {
	git commit -m "$1"
}
gpo() {
    git fetch --all
	git pull origin $(gb)
}
gpr() {
    git fetch --all
    mmBranch=$(git branch -l master main | sed 's/^* //')
    git checkout develop
    git merge $mmBranch
	git push origin develop
	git checkout $mmBranch
	git pull origin $mmBranch
    git merge develop
	git push origin $mmBranch 
	git push --tags
	git checkout develop
	git merge $mmBranch
	git push origin develop
}
gp() {
	git push origin $(gb)
}
gst() {
    git status
}
gur() {
    git remote add $1 https://github.com/$2/$1
    git fetch $1 
    mmBranch=$(git branch -l master main | sed 's/^* //')
    git checkout $mmBranch
    git merge $1/$mmBranch
}
