#! /bin/bash
# this runs ONCE at devcontainer creation time, and it runs during pre-build phase which
# means it does not have access to user context
# ===========================

echo "CONFIGURING DIRENV..."
echo 'eval "$(direnv hook bash)"' >> ~/.bashrc
echo 'eval "$(direnv hook zsh)"' >> ~/.zshrc
eval "$(direnv hook bash)"
mkdir -p ~/.config/direnv/
cp /workspaces/$(basename "$(pwd)")/.devcontainer/direnvrc ~/.config/direnv/direnvrc

echo "UPDATE PIP"
pip install --upgrade pip

echo "INSTALLING COMMITIZEN"
pipx install commitizen
pipx inject commitizen cz-conventional-gitmoji
echo 'eval "$(register-python-argcomplete3 cz)"' >> ~/.bashrc
echo 'eval "$(register-python-argcomplete3 cz)"' >> ~/.zshrc

echo "POETRY INSTALL"
poetry config virtualenvs.in-project true
direnv allow .
poetry install

echo "CONFIGURING PRE-COMMIT"
if [ ! -d .git ]; then
    echo "Initializing Git..."
    git init
fi
pipx install pre-commit
pre-commit install --install-hooks
