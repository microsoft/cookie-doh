#! /bin/bash
# this runs ONCE at devcontainer creation time, and it runs during pre-build phase which
# means it does not have access to user context
# ===========================

# finish config of direnv settings (would be nice to improve the devcontainer "feature")
echo "CONFIGURING DIRENV..."
echo 'eval "$(direnv hook zsh)"' >> ~/.zshrc
echo 'eval "$(direnv hook bash)"' >> ~/.bashrc
eval "$(direnv hook bash)"
mkdir -p ~/.config/direnv/
cp /workspaces/cookie-doh/.devcontainer/direnvrc ~/.config/direnv/direnvrc

echo "UPDATE PIP"
pip install --upgrade pip

echo "INSTALLING COMMITIZEN"
pipx install commitizen
pipx inject commitizen cz-conventional-gitmoji
echo 'eval "$(register-python-argcomplete cz)"' >> ~/.zshrc
echo 'eval "$(register-python-argcomplete cz)"' >> ~/.bashrc

echo "POETRY INSTALL"
poetry config virtualenvs.in-project true
direnv allow .
poetry install

echo "CONFIGURING PRE-COMMIT"
pre-commit install --install-hooks
