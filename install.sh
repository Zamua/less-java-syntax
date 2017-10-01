#!/bin/bash

if [ ! -d ~/.vim/syntax/ ]; then
    echo "Creating ~/.vim/syntax directory"
    mkdir -p ~/.vim/syntax/
    echo "Success! Created ~/.vim/syntax directory"
fi

cp ./syntax/lj.vim ~/.vim/syntax/

if [ ! -d ~/.vim/ftdetect/ ]; then
    echo "Creating ~/.vim/ftdetect directory"
    mkdir ~/.vim/ftdetect/
    echo "Success! Created ~/.vim/ftdetect directory"
fi

cp ./ftdetect/lj.vim ~/.vim/ftdetect

echo "Installation complete!"
echo "Open up the included test file (test.lj), and check the highlighting."
echo "If your syntax highlighting appears to be working then feel free to delete this cloned directory"
