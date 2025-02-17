# :computer: local dev setup

 If you use [codespaces](index.md#codespaces) or [devcontainers](index.md#devcontainer),
 you don't need to set up a local development environment.
 But otherwise, follow these steps to set up some useful utilities.

Check the [minimum required dependencies](#minimum-required-dependencies) and install the tools you need.

## :penguin: Linux/WSL instructions

### Minimum required dependencies

* [uv](https://docs.astral.sh/uv/)

### [Direnv](https://direnv.net/)

To load python virtual environments automatically and manage environment variables.

```bash
# Enter project
cd <project-folder>

# Install direnv
sudo apt update && sudo apt install direnv

# Add direnv to your shell
echo 'eval "$(direnv hook bash)"' >> ~/.bashrc  # if you use bash
echo 'eval "$(direnv hook zsh)"' >> ~/.zshrc  # if you use zsh
eval "$(direnv hook bash)"  # add to current shell

# Add uv support to direnv
mkdir -p ~/.config/direnv/
cp .devcontainer/direnvrc ~/.config/direnv/direnvrc
```

When you enter the project folder, direnv will ask you to allow the `.envrc` file to be loaded.
Allow it by running `direnv allow`.

### [uv](https://docs.astral.sh/uv/)

To manage package dependencies and virtual environments.

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

### [Pre-commit](https://pre-commit.com/)

To run code formatting and linting before committing.
In your projects, you should enable pre-commit hooks by running:

```bash
uv tool install pre-commit --with pre-commit-uv  # local user install
pre-commit install --install-hooks  # enable pre-commit hooks inside project
```

### [Commitizen](https://commitizen-tools.github.io/commitizen/)

To help with [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/).

```bash
uv tool install commitizen --with cz-conventional-gitmoji
```

### [Copier](https://copier.readthedocs.io/en/stable/)

To create new repositories from [cookie-doh](https://aka.ms/cookie-doh).

```bash
uv tool install copier
```
