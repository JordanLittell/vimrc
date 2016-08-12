cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry' > ~/.vimrc

echo "moving tmux config"
sudo cp -r .tmux ~/.tmux
sudo cp .tmux.conf ~/.tmux.conf

echo "sourcing tmux config"
tmux source ~/.tmux.conf

echo "Installed the Ultimate Vim configuration successfully!"
