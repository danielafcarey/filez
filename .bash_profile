export PATH="$HOME/.npm-packages/bin:$PATH"
# export PATH=~/.npm-global/bin:$PATH

# pyenv bullshit
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

export NVM_DIR="/Users/daniela/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# file nav
alias basho='cd ~ && vim .bash_profile'
alias vimo='cd ~ && vim .vimrc'

# applications
alias chrome='open -a "Google Chrome"'
alias github='open -a "Google Chrome" http://www.github.com/'
alias spotify='open -a "Spotify"'
alias notion='open -a "Notion"'
alias hb="hub browse"
alias py="python3"

# git
alias amend="git commit --amend"
alias ga="git add"
alias gb="git branch"
alias gd="git diff --patience --ignore-space-change"
alias gc="git checkout"
alias gcam="git commit -m"
alias gmm="git merge master"
alias gpom="git pull origin master"
alias gpomd="git pull origin master && git push daniela master"
alias gs="git status"

# winnie
alias win="cd ~/winnie/winnie-web/web"
alias winnow="cd ~/winnie/winnow"
alias wios="cd ~/winnie/winnie-ios"
alias wand="cd ~/winnie/winnie-android"
alias wmob="cd ~/winnie/winnie-mobile/winnie"
alias settings="vim ~/winnie/winnie-web/web/winnie/settings"
alias ww='open -a "Google Chrome" https://github.com/winnielabs/winnie-web'
alias wwd='open -a "Google Chrome" https://github.com/danielafcarey/winnie-web'
alias wm='open -a "Google Chrome" https://github.com/winnielabs/winnie-mobile'
alias wmd='open -a "Google Chrome" https://github.com/danielafcarey/winnie-mobile'
alias dev='open -a "Google Chrome" http://winnie.local/'
alias stag='open -a "Google Chrome" https://staging.winnielabs.com'
alias sand='open -a "Google Chrome" https://sandbox.winnielabs.com'
alias prod='open -a "Google Chrome" https://winnie.com'

# docker
alias restart='./bin/dev/restart'
alias dp='docker pause winnie-web-1'
alias dup='docker unpause winnie-web-1'
alias testy='~/winnie/winnie-web/bin/test/fast'
alias testyfull='~/winnie/winnie-web/bin/test/full'

# pause all winnow or winnie_web docker containers
# arg 'winnow' pauses all containers prefixed with `winnow_`
# arg 'winnie_web' pauses all containers prefixed with `winnie_web`
pause () {
  if [ "$1" = "winnow" ]; then
    docker pause winnow_importer_1 winnow_worker_1 winnow_winnow-rabbitmq_1
  elif [ "$1" = "winnie_web" ]; then
    docker pause winnie-web-1 winnie-nginx-1 winnie-redis-1 winnie-flower-1 winnie-rabbitmq-1 winnie-postgres-1
  fi
}

# unpause all winnow or winnie_web docker containers
unpause () {
  if [ "$1" = "winnow" ]; then
    docker unpause winnow_importer_1 winnow_worker_1 winnow_winnow-rabbitmq_1
  elif [ "$1" = "winnie_web" ]; then
    docker unpause winnie-web-1 winnie-nginx-1 winnie-redis-1 winnie-flower-1 winnie-rabbitmq-1 winnie-postgres-1
  fi
}


PS1='\w\[\033[0;32m\]$( git branch 2> /dev/null | cut -f2 -d\* -s | sed "s/^ / [/" | sed "s/$/]/" )\[\033[0m\] \$ '

# grep search excluding /node_modules and /__pycache__ and minified js/css
# $1 is search query
# $2 is optional file extension to include
get () {
  grep -R "$1" * --include=\*$2 --exclude-dir={node_modules,__pycache__} '--exclude=*.min.'{js,css} '--exclude=*.bootstrap.css' '--exclude=*.ndjson'
}


# start the opensearch tunnel and open the kibana dev tools dashboard
search () {
  if [ "$1" = "staging" ]; then
    open -a "Google Chrome" 'https://search-winnie-staging.winnebago/_dashboards/app/dev_tools#/console'
    # OLD WAY
    # ssh -Nv opensearch_tunnel & sleep 2 && open -a "Google Chrome" 'https://localhost:9202/_dashboards/app/dev_tools#/console'
  elif [ "$1" = "production" ]; then
    open -a "Google Chrome" 'https://search-winnie-prod.winnebago/_dashboards/app/dev_tools#/console'
    # OLD WAY
    # ssh -Nv opensearch_tunnel & sleep 2 && open -a "Google Chrome" 'https://localhost:9203/_dashboards/app/dev_tools#/console'
  fi
}
