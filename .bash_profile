export PATH="$HOME/.npm-packages/bin:$PATH"

export NVM_DIR="/Users/daniela/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

alias chrome='open -a "Google Chrome"'
alias github='open -a "Google Chrome" http://www.github.com/'
alias hb="hub browse"
alias ga="git add"
alias gb="git branch"
alias gd="git diff --patience --ignore-space-change"
alias gc="git checkout"
alias gcam="git commit -m"
alias gmm="git merge master"
alias gpom="git pull origin master"
alias gs="git status"
alias oi="open index.html"
alias win="cd ~/winnie/winnie-web/web"
alias py="python3"
alias dev='open -a "Google Chrome" http://winnie.local/'
alias staging='open -a "Google Chrome" https://staging.winnielabs.com'
alias sandbox='open -a "Google Chrome" https://sandbox.winnielabs.com'
alias production='open -a "Google Chrome" https://winnie.com'
alias ww='open -a "Google Chrome" https://github.com/winnielabs/winnie-web'
alias wwd='open -a "Google Chrome" https://github.com/danielafcarey/winnie-web'
alias restart='./bin/dev/restart'

PS1='\w\[\033[0;32m\]$( git branch 2> /dev/null | cut -f2 -d\* -s | sed "s/^ / [/" | sed "s/$/]/" )\[\033[0m\] \$ '

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
