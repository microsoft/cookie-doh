# :cookie: cookie-doh

[![main](https://github.com/microsoft/cookie-doh/actions/workflows/main.yml/badge.svg)](https://github.com/microsoft/cookie-doh/actions/workflows/main.yml)
[![Checked with pyright](https://microsoft.github.io/pyright/img/pyright_badge.svg)](https://microsoft.github.io/pyright/)
[![Ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ruff/main/assets/badge/v2.json)](https://github.com/astral-sh/ruff)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Cookie-doh is a repository template for creating single Python package projects with setup tools and workflows.

It includes [Poetry](https://python-poetry.org/) for dependency management,
[ruff](https://github.com/astral-sh/ruff) for formatting and linting,
[pyright](https://github.com/microsoft/pyright) for annotations,
[codespell](https://github.com/codespell-project/codespell) for spell checking,
and GitHub Actions for [CI](https://en.wikipedia.org/wiki/Continuous_integration).

Optionally, you can enable documentation builds with
[MkDocs](https://squidfunk.github.io/mkdocs-material/),
[pre-commit](https://pre-commit.com/) for quick code fixes, and
[commitizen](https://commitizen-tools.github.io/commitizen/)
for writing [conventional commits](https://www.conventionalcommits.org/).

:point_right: Short-link: [https://aka.ms/cookie-doh]()

:star: Star this repo to show your support!

-----------------------------------------------------------------

## :rocket: Getting Started with cookie-doh

This template uses [_copier_](https://github.com/copier-org/copier) to create new repositories.
If you don't have _copier_, follow the [installation instructions](https://copier.readthedocs.io/en/stable/#installation).

Then, simply type

```bash
copier copy gh:microsoft/cookie-doh <new-repo-folder>
```
and answer the questions to create your new project.

If cookie-doh tags a new version that includes new changes, you can merge those changes
into your project by changing directory into your repo and running:
```bash
copier update
```
This will update your project with the latest changes from cookie-doh :cookie:.


## :notebook_with_decorative_cover: Documentation

Visit the documentation:

https://microsoft.github.io/cookie-doh

Go to [getting started with your new repo](https://microsoft.github.io/cookie-doh/getting_started)
to understand the structure of your new project and how to configure it further.


## :space_invader: Codespaces

We provide a configured devcontainer setup for you to use in in your new project and/or cookie-doh itself.
You can use it to create a container image with all the necessary dependencies automatically,
and use in a remote development environment with GitHub Codespaces or DevPod.

Learn about [GitHub Codespaces](https://docs.github.com/en/codespaces) and/or [DevPod](https://devpod.sh/),
and click below to clone or fork this repository automatically and start developing:

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/{{organization}}/{{project_name}})

[![Open in DevPod!](https://devpod.sh/assets/open-in-devpod.svg)](https://devpod.sh/open#https://github.com/{{organization}}/{{project_name}})


## :gear: Devcontainer

Alternatively, you can you can build a local container directly and use it in VSCode and/or
PyCharm without developing in a remote node or setting up a local environment.

Learn about [Devcontainers](https://containers.dev/).
Requires [Docker](https://www.docker.com/get-started/) installed on your local machine.

:point_right: Follow instructions for [VSCode](https://code.visualstudio.com/docs/devcontainers/tutorial)
and/or [PyCharm](https://www.jetbrains.com/help/pycharm/connect-to-devcontainer.html).


## :computer: Local Development

### Required system dependencies

* [python >= 3.10](https://www.python.org/)
* [poetry](https://python-poetry.org/): To manage package dependencies and virtual environments.

For setting up the development environment (both for your newly created project and cookie-doh)

* cd into your repo.
* Install the project dependencies with poetry:
```bash
poetry install
```

### Optional development setup

We use the following (optional) dependencies for development.
If you are going to set up a local development environment for your created project, or for cookie-doh
itself, follow the local development setup [instructions](https://microsoft.github.io/cookie-doh/dev_setup).

* [direnv](https://direnv.net/):  To load python virtual environments automatically and manage environment variables.
* [pyenv](https://github.com/pyenv/pyenv): To manage python versions.
* [pipx](https://pipxproject.github.io/pipx/): To install python packages in isolated environments.
* [commitizen](https://commitizen-tools.github.io/commitizen/): To help with [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/).
* [cz-conventional-gitmoji](https://github.com/ljnsn/cz-conventional-gitmoji): A commitizen plugin that combines [gitmoji](https://gitmoji.dev/) and conventional commits.
* [pre-commit](https://pre-commit.com/): To run code formatting and linting before committing.
* [copier](https://copier.readthedocs.io/en/stable/): To create new repositories from this template
and update them with new changes.


## :mountain: Contributing

This project welcomes contributions and suggestions. Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

You may also fork this project, modify it and create your own template from it and share with others.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.


## :balance_scale: Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft
trademarks or logos is subject to and must follow
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.
