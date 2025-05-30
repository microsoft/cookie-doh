#! /bin/bash

echo "CONFIGURING GIT"
git config --global core.editor "nano"
git config --global pager.branch false
git config --global alias.ba branch
git config --global alias.co checkout
git config --global alias.st status
git config --global alias.sa stash
git config --global alias.cp cherry-pick
git config --global alias.mt mergetool
git config --global alias.pl pull --rebase

echo "INSTALLING PACKAGES"
uv sync --link-mode copy
direnv allow .

echo "INSTALLING COMMITIZEN"
uv tool install commitizen --with cz-conventional-gitmoji --link-mode copy

echo "CONFIGURING PRE-COMMIT"
if [ ! -d .git ]; then
    echo "Initializing Git..."
    git init
fi
uv tool install pre-commit --with pre-commit-uv --link-mode copy
pre-commit install --install-hooks
