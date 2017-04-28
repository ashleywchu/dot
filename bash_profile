export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=/usr/local/share/npm/bin:$PATH

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
export PATH="$PATH:`yarn global bin`"

# This function is called in your prompt to output your active git branch.
function parse_git_branch() {
git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }

  export PS1="💥 \u \w\$(parse_git_branch) $ "

  # This function builds your prompt. It is called below
  function prompt {
  # Define some local colors
  local         RED="\[\033[0;31m\]" # This syntax is some weird bash color thing I never
  local   LIGHT_RED="\[\033[1;31m\]" # really understood
  # local   BLUE="\[\e[0;49;34m\]"

  # Here is where we actually export the PS1 Variable which stores the text for your prompt
  export PS1="\[\e]2;\u@\h\a[\[\e[37;44;1m\]\t\[\e[0m\]]$RED\$(parse_git_branch) \[\e[32m\]\W\[\e[0m\]\n\[\e[0;31m\]$RED $CHAR \[\e[0m\]"
  PS2='> '
  PS4='+ '
}

# Aliases
# =====================
# LS
alias l='ls -lah'

# Git
alias gcl="git clone"
alias gs="git status"
alias gl="git pull"
alias gp="git push"
alias gd="git diff | mate"
alias gc="git commit -v"
alias gca="git commit -v -a"
alias gb="git branch"
alias gba="git branch -a"
alias gcm="git commit -m"
alias gcam="git commit -am"
alias gbb="git branch -b"
alias glg="git log --stat --color"
alias ga="git add"
alias ghub="hub browse"
alias gco="git checkout"

# Bundler
alias be="bundle exec"

# Directory Nav
alias up="cd .."
alias dev="cd /Users/ashleychu/Development"
alias emp="cd /Users/ashleychu/Development/empatico"

# Case-Insensitive Auto Completion
bind "set completion-ignore-case on" || echo 'Something went wrong with bind in ~/.bash_profile.' 
ulimit -n 2048

# Autocomplete Git Branch Names and Commands
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export NVM_DIR="/Users/ashleychu/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
# export PATH="$HOME/.rbenv/bin:$PATH"
