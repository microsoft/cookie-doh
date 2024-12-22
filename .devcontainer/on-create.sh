#! /bin/bash
echo "CONFIGURING DIRENV..."
echo 'eval "$(direnv hook bash)"' >> ~/.bashrc
echo 'eval "$(direnv hook zsh)"' >> ~/.zshrc
eval "$(direnv hook bash)"
mkdir -p ~/.config/direnv/
cp /workspaces/$(basename "$(pwd)")/.devcontainer/direnvrc ~/.config/direnv/direnvrc

echo "UPDATE PIP"
pip3 install -U pip

echo "UV INSTALL"
curl -LsSf https://astral.sh/uv/install.sh | sh
uv generate-shell-completion bash > ~/.bash_completion
mkdir $ZSH_CUSTOM/plugins/uv
uv generate-shell-completion zsh > ~/.zfunc/_uv
sed -i 's/plugins=(git)/plugins=(git uv)/' ~/.zshrc
direnv allow .
