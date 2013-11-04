#! /bin/sh

repos=(
  scrooloose/nerdtree
  sjl/gundo.vim
  rodjek/vim-puppet
  vim-ruby/vim-ruby
  tpope/vim-rvm
)

for repo in "$repos[@]"
do
  vim-bundle update $repo
done 
