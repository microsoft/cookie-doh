# :computer: local dev setup

 If you use [codespaces](index.md#codespaces) or [devcontainers](index.md#devcontainer),
 you don't need to set up a local development environment.
 But otherwise, follow these steps to set up some useful utilities.

Check the [minimum required dependencies](#minimum-required-dependencies) and install the tools you need.

## :penguin: Linux/WSL instructions

### Minimum required dependencies:

  * [python >= 3.10](https://www.python.org/downloads/): we recommend installing python via [pyenv](#pyenv).
  * [poetry](https://python-poetry.org/docs/#installation): we recommend installing [poetry](#poetry) with [pipx](#pipx).


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

# Add poetry support to direnv
mkdir -p ~/.config/direnv/
cp .devcontainer/direnvrc ~/.config/direnv/direnvrc
```
When you enter the project folder, direnv will ask you to allow the `.envrc` file to be loaded.
Allow it by running `direnv allow`.


### [Pyenv](https://github.com/pyenv/pyenv)

For installing and managing (multiple) python versions.
You may want to use the system's version and not install pyenv.

Otherwise, follow these instructions.

1. [Install Python build dependencies](https://github.com/pyenv/pyenv?tab=readme-ov-file#install-python-build-dependencies):
    ```bash
    sudo apt update && sudo apt curl install build-essential libssl-dev zlib1g-dev \
        libbz2-dev libreadline-dev libsqlite3-dev curl \
        libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
    ```
2. [Install pyenv](https://github.com/pyenv/pyenv?tab=readme-ov-file#automatic-installer)
    ```bash
    curl https://pyenv.run | bash
    ```

3. [Set up your shell environment for Pyenv](https://github.com/pyenv/pyenv?tab=readme-ov-file#set-up-your-shell-environment-for-pyenv)
    ```bash
    # add env variables to your bash .profile (if you use bash)
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
    echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
    echo 'eval "$(pyenv init --path)"' >> ~/.profile

    # add shell integration to bash shell
    echo 'eval "$(pyenv init -)"' >> ~/.bashrc

    # add env variables to zsh's .zprofile (if you use zsh)
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zprofile
    echo '[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zprofile
    echo 'eval "$(pyenv init --path)"' >> ~/.zprofile

    # add shell integration to zsh shell
    echo 'eval "$(pyenv init -)"' >> ~/.zshrc
    ```

4. [Install python versions](https://github.com/pyenv/pyenv?tab=readme-ov-file#install-additional-python-versions)
    ```bash
    pyenv install 3.10
    pyenv global 3.10
    ```


### [Pipx](https://pipxproject.github.io/pipx/)

For installing python packages in isolated environments.

```bash
sudo apt update && sudo apt install pipx
pipx ensurepath
```


### [Poetry](https://python-poetry.org/)
To manage package dependencies and virtual environments.

```bash
pipx install poetry
```


### [Pre-commit](https://pre-commit.com/)
To run code formatting and linting before committing.

```bash
pipx install pre-commit
```

In your projects, you should enable pre-commit hooks by running:
```bash
pre-commit install --install-hooks
```


### [Commitizen](https://commitizen-tools.github.io/commitizen/)
To help with [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/).

```bash
pipx install commitizen
pipx inject commitizen cz-conventional-gitmoji  # installs emoji plugin
```


### [Copier](https://copier.readthedocs.io/en/stable/)
To create new repositories from [cookie-doh](https://aka.ms/cookie-doh).

```bash
pipx install copier
```
