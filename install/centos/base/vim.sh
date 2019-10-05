#!/bin/bash
yum install vim -y && \
git clone https://github.com/crowdtap/dotfiles ~/.dotfiles && \
cd ~/.dotfiles && \
echo '"Escape key' >> ~/.dotfiles/vimrc && \
echo ':imap jj <Esc>' >> ~/.dotfiles/vimrc && \
echo ':imap jk <Esc>'  >> ~/.dotfiles/vimrc && \
echo ':imap kj <Esc>'  >> ~/.dotfiles/vimrc && \
echo ':nmap Z :wa<CR>'  >> ~/.dotfiles/vimrc && \
echo 'autocmd BufNewFile,BufRead *.tf set syntax=ruby'  >> ~/.dotfiles/vimrc && \
echo "Bundle 'ervandew/screen'" >> ~/.custom.vim-plugins && \
./setup.sh
