# Dev Setup

1. Remap keyboard keys: control <> caps lock
2. [Download iterm](https://iterm2.com/downloads.html)
3. Install [power line fonts](https://github.com/powerline/fonts)
   ```
   # clone
   git clone https://github.com/powerline/fonts.git --depth=1
   
   # install
   cd fonts ./install.sh

   # clean-up a bit
   cd .. rm -rf fonts
   ```
5. Upload [iterm_profile.json](https://github.com/danielafcarey/filez/blob/master/iterm_profile.json) as profile and set it in current item window (profiles > select profile you just added)
6. Install [oh my zsh](https://github.com/ohmyzsh/ohmyzsh?tab=readme-ov-file#basic-installation)
   ```
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```
8. Copy [.zshrc from gitbub](https://github.com/danielafcarey/filez/blob/master/.zshrc) to ~/.zshrc
9. Copy [.vimrc from gitbub](https://github.com/danielafcarey/filez/blob/master/.vimrc) to ~/.vimrc
10. Copy [.bash_profile from gitbub](https://github.com/danielafcarey/filez/blob/master/.bash_profile) to ~/.bash_profile
11. Install [Pathogen](https://github.com/tpope/vim-pathogen?tab=readme-ov-file#installation) (for vim bundles)
    ```
    # check that this is correct in installation guide before running
    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
    ```
13. Install vim bundles (eventually should write a script for this)
    
    [auto-pairs](https://github.com/jiangmiao/auto-pairs): Insert or delete brackets, parens, quotes in pair
    ```
    git clone https://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs
    ```
    
    [ctrlp.vim](https://ctrlpvim.github.io/ctrlp.vim/#installation): File finder for vim
    ```
    git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim
    ```
    
    [nerdtree](https://github.com/preservim/nerdtree): File tree finder
    ```
    git clone https://github.com/preservim/nerdtree.git ~/.vim/bundle/nerdtree
    ```
    
    [vim-closetag](https://github.com/alvan/vim-closetag): Automatically close html/jsx tags
    ```
    git clone https://github.com/alvan/vim-closetag.git ~/.vim/bundle/vim-closetag
    ```
    
    [vim-css-color](https://github.com/ap/vim-css-color): Highlight colors in their color
    ```
    git clone https://github.com/ap/vim-css-color.git ~/.vim/bundle/vim-css-color
    ```
    
    [vim-javascript](https://github.com/pangloss/vim-javascript): Javascript syntax highlighting
    ```
    git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
    ```
    
    [vim-sensible](https://github.com/tpope/vim-sensible): Basic set of vim rules to live by
    ```
    git clone https://github.com/tpope/vim-sensible.git ~/.vim/bundle/vim-sensible
    ```
    
    [commentary](https://github.com/tpope/vim-commentary): Easily comment stuff out with `gcc`
    ```
    git clone https://github.com/tpope/vim-commentary.git ~/.vim/bundle/vim-commentary
    ```
    
    [lightline.vim](https://github.com/itchyny/lightline.vim): Status line highlighting for vim mode
    ```
    git clone https://github.com/itchyny/lightline.vim ~/.vim/bundle/lightline.vim
    ```
    
    [supertab](https://github.com/ervandew/supertab): Autocomplete!
    ```
    git clone https://github.com/ervandew/supertab.git ~/.vim/bundle/supertab
    ```
    
    [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized): Color scheme in vim
    ```
    git clone git://github.com/altercation/vim-colors-solarized.git ~/.vim/bundle/vim-colors-solarized
    ```
    
    [vim-gh-line](https://github.com/ruanyl/vim-gh-line): Open link to current line in GitHub using `gh`
    ```
    git clone https://github.com/ruanyl/vim-gh-line ~/.vim/bundle/vim-gh-line
    ```
    
    [vim-jsx-pretty](https://github.com/MaxMEllon/vim-jsx-pretty): React syntax highlighting and indenting
    ```
    git clone https://github.com/MaxMEllon/vim-jsx-pretty ~/.vim/bundle/vim-jsx-pretty
    ```
