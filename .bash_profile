export PATH="$HOME/.npm-packages/bin:$PATH"

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
alias settings="vim ~/winnie/winnie-web/web/winnie/settings"
alias ww='open -a "Google Chrome" https://github.com/winnielabs/winnie-web'
alias wwd='open -a "Google Chrome" https://github.com/danielafcarey/winnie-web'
alias dev='open -a "Google Chrome" http://winnie.local/'
alias stag='open -a "Google Chrome" https://staging.winnielabs.com'
alias sand='open -a "Google Chrome" https://sandbox.winnielabs.com'
alias prod='open -a "Google Chrome" https://winnie.com'

# docker
alias restart='./bin/dev/restart'
alias dp='docker pause winnie_web_1'
alias dup='docker unpause winnie_web_1'
alias testy='docker exec -it winnie_web_1 python manage.py test'

# pause all winnow or winnie_web docker containers
# arg 'winnow' pauses all containers prefixed with `winnow_`
# arg 'winnie_web' pauses all containers prefixed with `winnie_web`
pause () {
  if [ "$1" = "winnow" ]; then
    docker pause winnow_importer_1 winnow_worker_1 winnow_beat_1 winnow_libpostal_1 winnow_winnow-rabbitmq_1
  elif [ "$1" = "winnie_web" ]; then
    docker pause winnie_web_1 winnie_nginx_1 winnie_redis_1 winnie_comments-staging-elasticsearch_1 winnie_staging-opensearch_1 winnie_flower_1 winnie_rabbitmq_1
  fi
}

# unpause all winnow or winnie_web docker containers
unpause () {
  if [ "$1" = "winnow" ]; then
    docker unpause winnow_importer_1 winnow_worker_1 winnow_beat_1 winnow_libpostal_1 winnow_winnow-rabbitmq_1
  elif [ "$1" = "winnie_web" ]; then
    docker unpause winnie_web_1 winnie_nginx_1 winnie_redis_1 winnie_comments-staging-elasticsearch_1 winnie_staging-opensearch_1 winnie_flower_1 winnie_rabbitmq_1
  fi
}


PS1='\w\[\033[0;32m\]$( git branch 2> /dev/null | cut -f2 -d\* -s | sed "s/^ / [/" | sed "s/$/]/" )\[\033[0m\] \$ '

# grep search excluding /node_modules and /__pycache__ and minified js/css
# $1 is search query
# $2 is optional file extension to include
get () {
  grep -R "$1" * --include=\*$2 --exclude-dir={node_modules,__pycache__} '--exclude=*.min.'{js,css} '--exclude=*.bootstrap.css'
}

# Create React App boiler plate setup w/scss, eslint
crap() {
  create-react-app "$1"
  cd "$1"
  cp ~/turing/templates/package.json ./
  cp ~/turing/templates/App.js ./src
  cp ~/turing/templates/index.js ./src
  cp ~/turing/templates/.eslintrc ./src
  cp ~/turing/templates/setupTests.js ./src
  cp ~/turing/templates/README.md ./
  mv ./src/App.css ./src/App.scss
  mkdir ./src/App/
  mv ./src/App.scss ./src/App/
  mv ./src/App.js ./src/App/
  mv ./src/App.test.js ./src/App/
  rm ./src/logo.svg
  rm ./src/registerServiceWorker.js
  npm i
  npm i -S redux react-redux react-router-dom
  git init
  git add .
  git commit -m "Initial Commit"
  hub create
  git push origin master
  hub browse
}
