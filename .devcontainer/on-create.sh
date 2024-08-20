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

echo "POETRY INSTALL"
pipx install poetry
poetry completions bash >> ~/.bash_completion
mkdir $ZSH_CUSTOM/plugins/poetry
poetry completions zsh > $ZSH_CUSTOM/plugins/poetry/_poetry
sed -i 's/plugins=(git)/plugins=(git poetry)/' ~/.zshrc
poetry config virtualenvs.in-project true
direnv allow .
poetry env remove --all
poetry install
