## v0.0.25 (2025-04-28)

### feat

- consolidate dockerfile

## v0.0.24 (2025-04-25)

### ✨ Features

- working dockerfile and some fixes

### chore

- remove non working azure pipeline component governance
- minor adjustments to readme

### dep-bump

- update packages

### feat

- add dockerfile and template
- add url metadata to pyproject.toml

### fix

- ci failing

### refactor

- modify dockerfiles
- rename github workflows

### style

- minor style edits

## v0.0.23 (2025-03-17)

### docs

- change order of generated docs

### feat

- check pre-commit config in tests
- change dependabot package ecosystem to uv
- share uv cache from host and devcontainer

### fix

- wrong exclude conditions in copier yaml
- wrong copier variable name
- tests not passing
- docker socket in devcontainer
- relock uv
- small fix
- add missing wheels.yml file in template

### refactor

- remove template folder and use root instead with exclude patterns

## v0.0.22 (2025-02-18)

### docs

- update documentation

## v0.0.21 (2025-02-17)

### fix

- wrong indentation in mkdocs.yml

### 🔐🚧📈✏️💩👽️🍻💬🥚🌱🚩🥅🩺 Others

- breaking change

## v0.0.20 (2025-02-17)

### ♻️ Refactorings

- use uvx with pre-commit-uv to run pre-commit >>> ⏰ 10m
- replace PDM, pipx, pyenv and more with uv >>> ⏰ 2h

### ⚡️ Performance

- **python**: update python version

### dep-bump

- update packages
- update dependencies

### fix

- wrong jinja syntax
- pin because of bug in mkdocstrings-python
- missing set up python
- added wandb as known-third-party library for ruff correct sorting

### perf

- switch workflows to python 3.12

### style

- install packages with uv before direnv allow
- some more style changes
- some style adjustments

### 📌➕⬇️➖⬆️ Dependencies

- **ci**: upgrade GHA to install uv >>> ⏰ 1m
- **all**: update dependencies

### 📝💡 Documentation

- **banner**: update copyright year

### 🔥⚰️ Clean up

- **direnvrc**: remove unnecessary call to uv run

## v0.0.19 (2024-12-17)

### ✅🤡🧪 Tests

- add jinja2 rendering tests for template files

### 📌➕⬇️ ➖⬆️  Dependencies

- **pyproject**: add jinja2 package to dev environment

## v0.0.18 (2024-12-10)

### 🐛🚑️ Fixes

- try some other syntax

## v0.0.17 (2024-12-10)

### 🐛🚑️ Fixes

- jinja was not escaping some variable interpolation

## v0.0.16 (2024-12-06)

### ✨ Features

- add pdm package management and remove poetry

### 🐛🚑️ Fixes

- installation in remote workflow
- rebase instead of merge dependabot prs

### build

- **deps-dev**: bump tornado from 6.4.1 to 6.4.2

## v0.0.15 (2024-11-11)

### ✨ Features

- add automerge capabilities to dependabot of minor and patch updates
- **dependabot**: add automerge of dependabot prs if all checks pass

### 🎨🏗️ Style & Architecture

- **symlinks**: undo previous change because it was not needed in the end

### 💚👷 CI & Build

- fix automerge for minor dependabot updates

### 🧹 chore

- **typo**: fix typo

## v0.0.14 (2024-11-07)

### ✨ Features

- publish wheels
- publish wheels
- git ignore data folder

### 🐛🚑️ Fixes

- **template**: some symlinks are not being converted after creating a project
- broken symlinks
- permission not propagated
- fix wheel location to upload
- add missing plugin to mkdocs.yml
- remove unnecessary sphinx dependencies from template and update packages

### 🔒️ Security

- **pages**: undo previous change because it did not fix anything
- **docs**: attempt to add secure headers to github pages

### 🎨🏗️ Style & Architecture

- rename some workflows

### 💚👷 CI & Build

- stop publishing wheels

### 🔧🔨📦️ Configuration, Scripts, Packages

- remove some icons in docs to try to enforce hsts headers
- pytest in vscode now supports coverage
- remove unused settings

### 🧑‍💻 Developer Experience

- update vscode settings with latest updates

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
