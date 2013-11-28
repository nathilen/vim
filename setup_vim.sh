#!/bin/sh

VIM_DIR="${HOME}/.vim"
CURRENT_DIR=`pwd`
declare -a VIM_SUB_DIRS=('autoload' 'bundle' 'colors' 'doc' 'plugin');

mkdir -p $VIM_DIR

for dir in "${VIM_SUB_DIRS[@]}"
do
  echo "Creating link for directory ${CURRENT_DIR}/${dir}"
  ln -s "${CURRENT_DIR}/${dir}" "${VIM_DIR}/${dir}"
done

ln -s "${CURRENT_DIR}/vimrc" "${HOME}/.vimrc"



