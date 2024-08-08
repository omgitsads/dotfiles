#!/usr/bin/env bash

tmpdir=$(mktemp -d)

cd "$tmpdir" || exit

curl -s https://user-images.githubusercontent.com/18397/187488967-d0d61d83-008a-4661-81f0-a75eef7c2a58.png -o icon.png

fileicon set /Applications/WezTerm.app icon.png
