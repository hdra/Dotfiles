#!/bin/bash

shopt -s dotglob extglob globstar nullglob

#git submodule update --init

if [[ $0 == /* ]]; then
    location=${0%/*}
else
    location=$PWD/${0#./}
    location=${location%/*}
fi

excludes='+(README.md|linkem.sh|oh-my-zsh|oh-my-zsh/*|.git|.git/*|*/.git|.gitignore|.gitmodules)'

echo "Linking.."

for file in "$location"/**/*; do
    bare="${file#$location/}"

    case "$bare" in
        $excludes) continue ;;
    esac

    if [[ -d "$file" ]]; then
        mkdir -p ~/"$bare"
    elif [[ -f "$file" ]]; then
        ln -sfn "$file" ~/"$bare"
    fi
done

echo "Done!"
