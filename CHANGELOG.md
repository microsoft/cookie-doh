## v0.0.13 (2024-08-27)

### ✨ Features

- add mkdocstrings and remove sphinx from docs builds
- rootless docker in devcontainer
- add missing docker configuration
- install docker from docker directly

### 🐛🚑️ Fixes

- wrong jinja code in readme
- docker-in-docker in devcontainer

### 🔧🔨📦️ Configuration, Scripts, Packages

- some settings updates

### 🧹 chore

- cleanup unnecessary ignore

## v0.0.12 (2024-07-25)

### ✨ Features

- add autocompletion for poetry in zsh
- remake the devcontainer with dockerfile
- install azure-cli gh and docker to devcontainer
- add docker build support

### 🐛🚑️ Fixes

- **devcontainer**: fix typo in post-create.sh devcontainer script

### 💚👷 CI & Build

- **dependabot**: group security updates of dependabot

### 📝💡 Documentation

- fix typo on curl install

### 🔐🚧📈✏️ 💩👽️🍻💬🥚🌱🚩🥅🩺 Others

- fix typo in dependabot.yaml

### 🔧🔨📦️ Configuration, Scripts, Packages

- change default config values of copier

### 🩹 fix-simple

- **devcontainer**: use register-python-argcomplete3 rather than register-python-argcomplete

## v0.0.11 (2024-07-12)

### 📌➕⬇️ ➖⬆️  Dependencies

- update dependencies

### 📝💡 Documentation

- **accessibility**: fix accessibility errors on code snippet comments

## v0.0.10 (2024-06-03)

### 📌➕⬇️ ➖⬆️  Dependencies

- **devcontainer**: add nvidia drivers to devcontainer

### 📝💡 Documentation

- fix docs url ending in slash
- fix footer for being compliant
- add copyright notice to template if microsoft_internal
-  add footer with code of conduct, trademarks and privacy links
- add poetry reference to intro description
- fix some accessibility issues: links not being underlined and contrast of copyright notice

### 🔧🔨📦️ Configuration, Scripts, Packages

- **devcontainer**: check if git has been initialized in devcontainer script before initializing pre-commit
- **devcontainer**: move direnvrc file from cwd rather than project name

## v0.0.9 (2024-05-15)

### 🐛🚑️ Fixes

- codespaces and devpod readme link

### 💚👷 CI & Build

- make dependabot run weekly as compliance requests

### 📝💡 Documentation

- add clarifications on required tools when creating a project
- minor readme edit

### 🔧🔨📦️ Configuration, Scripts, Packages

- **gitignore**: exclude wandb log folders
- add jupyter default workspace directory to the root

## v0.0.8 (2024-05-14)

### 📝💡 Documentation

- update readme files

## v0.0.7 (2024-05-13)

### 📝💡 Documentation

- minor edits to main readme file

### 🔐🚧📈✏️ 💩👽️🍻💬🥚🌱🚩🥅🩺 Others

- formatting of first steps
- fix changelog typos

### 🧹 chore

- minor rephrase
- make documentation more clear both in root and template

## v0.0.6 (2024-05-13)

### 🐛🚑️ Fixes

- fix: add conditional check to fit link in setup instructions
- small link fix when referring to local setup instructions

## v0.0.5 (2024-05-13)

### 🐛🚑️ Fixes

- fix the readme pointers again

## v0.0.4 (2024-05-13)

### 🐛🚑️ Fixes

- update index.md file in template
- ignore poetry.lock in codespell

## v0.0.3 (2024-05-13)

### 🐛🚑️ Fixes

- point to correct readme file in template project

## v0.0.2 (2024-05-13)

### ♻️  Refactorings

- **copier**: added a template folder and extra questions for optional tools

### 🎨🏗️ Style & Architecture

- emojis to source code
- **readme**: rename and try source code emoji
- **readme**: add main workflow status badge

### 💚👷 CI & Build

- **codespell**: add codespell dev dependency to workflows in cookie-doh and template
- add read permissions to build-docs in main workflow
- refactor workflows

### 📝💡 Documentation

- clarify some documentation
- add dev setup instructions to cookie-doh and template and update readme files

### 🔧🔨📦️ Configuration, Scripts, Packages

- **vscode**: change vscode multi-root workspace settings file to folder settings
- **pre-commit**: remove commitizen protection branch

## v0.0.1 (2024-05-07)
