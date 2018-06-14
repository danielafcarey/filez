
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
alias tur='open -a "Google Chrome" http://frontend.turing.io/lessons/'
alias m3="cd ~/turing/mod3"
alias m2="cd ~/turing/mod2"
alias m1="cd ~/turing/mod1"
alias oi="open index.html"
PS1='\w\[\033[0;32m\]$( git branch 2> /dev/null | cut -f2 -d\* -s | sed "s/^ / [/" | sed "s/$/]/" )\[\033[0m\] \$ '

# Add Visual Studio Code (code)
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

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
