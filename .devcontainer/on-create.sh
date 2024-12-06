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

echo "PDM INSTALL"
pipx install pdm
pdm completion bash > ~/.bash_completion
mkdir $ZSH_CUSTOM/plugins/pdm
pdm completion zsh > ~/.zfunc/_pdm
sed -i 's/plugins=(git)/plugins=(git pdm)/' ~/.zshrc
pdm config virtualenvs.in-project true
direnv allow .
pdm env remove --all
pdm install
