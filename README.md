# vimrc-vundle 使用说明

* vim插件管理

    使用[Vundle](https://github.com/VundleVim/Vundle.vim)来管理vim插件

        $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

    在[vim-scripts.org](http://vim-scripts.org/vim/scripts.html)中查找可用插件

* 常用插件

    [taglist](https://github.com/vim-scripts/taglist.vim)

    *配合ctags使用*

    [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)

    [winmanager](https://github.com/vim-scripts/winmanager)

    [ximsfei/cscope_maps](https://github.com/ximsfei/cscope_maps)

    *配合cscope使用*

    [godlygeek/tabular](https://github.com/godlygeek/tabular)

    [plasticboy/vim-markdown](https://github.com/plasticboy/vim-markdown)

    [Shougo/neocomplete](https://github.com/Shougo/neocomplete.vim)

    *在Ubuntu中使用, 确定安装了一下任何一个包*

    > vim-nox
    > vim-gtk
    > vim-gnome
    > vim-athena

    *在MacOS中使用, 可以安装[MacVim](https://github.com/zhaocai/macvim), 也可以安装vim --with-lua. MacVim依赖XCode.app*

* example

        $ git clone https://github.com/ximsfei/vimrc-vundle.git
        $ cp vimrc-vundle/.vimrc ~/
        $ rm -rf vimrc-vundle
        $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
        $ vim
          :PluginInstall

  * Ubuntu中安装vim-nox

            $ sudo apt-get install vim-nox
  * Mac OS中安装[MacVim](https://github.com/zhaocai/macvim)

            $ brew install macvim --with-cscope --with-lua
            $ brew linkapps macvim
    或者

          $ brew install vim --with-lua
