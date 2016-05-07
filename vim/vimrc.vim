" Enable once you've installed vundle.
" source $HOME/dotfiles/vim/plugins.vim
source $HOME/dotfiles/vim/settings.vim

" When editing settings.vim resource all the windows \o_
au bufwritepost $HOME/dotfiles/vim/settings.vim windo source $HOME/dotfiles/vim/settings.vim
