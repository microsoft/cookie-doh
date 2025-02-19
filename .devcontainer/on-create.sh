#! /bin/bash
echo "CONFIGURING DIRENV..."
echo 'eval "$(direnv hook bash)"' >> ~/.bashrc
echo 'eval "$(direnv hook zsh)"' >> ~/.zshrc
eval "$(direnv hook bash)"
mkdir -p ~/.config/direnv/
cp /workspaces/$(basename "$(pwd)")/.devcontainer/direnvrc ~/.config/direnv/direnvrc

echo "UV INSTALL"
curl -LsSf https://astral.sh/uv/install.sh | sh
echo 'eval "$(uv generate-shell-completion bash)"' >> ~/.bashrc
echo 'eval "$(uvx --generate-shell-completion bash)"' >> ~/.bashrc
mkdir $ZSH_CUSTOM/plugins/uv
echo 'eval "$(uv generate-shell-completion zsh)"' >> ~/.zshrc
echo 'eval "$(uvx --generate-shell-completion zsh)"' >> ~/.zshrc
