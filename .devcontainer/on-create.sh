#! /bin/bash

echo "CONFIGURING DIRENV..."
echo 'eval "$(direnv hook bash)"' >> ~/.bashrc
echo 'eval "$(direnv hook zsh)"' >> ~/.zshrc
eval "$(direnv hook bash)"
mkdir -p ~/.config/direnv/
cp /workspaces/$(basename "$(pwd)")/.devcontainer/direnvrc ~/.config/direnv/direnvrc
pipx ensurepath

echo "UPDATE PIP"
pip3 install -U pip

echo "INSTALLING COMMITIZEN"
pipx install commitizen
pipx inject commitizen cz-conventional-gitmoji
echo 'eval "$(register-python-argcomplete3 cz)"' >> ~/.bashrc
echo 'eval "$(register-python-argcomplete3 cz)"' >> ~/.zshrc

echo "POETRY INSTALL"
pipx install poetry
poetry completions bash >> ~/.bash_completion
poetry config virtualenvs.in-project true
direnv allow .
poetry env remove --all
poetry install

echo "CONFIGURING PRE-COMMIT"
if [ ! -d .git ]; then
    echo "Initializing Git..."
    git init
fi
pipx install pre-commit
pre-commit install --install-hooks
