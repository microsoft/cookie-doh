# :cookie: cookie-doh

[![main](https://github.com/microsoft/cookie-doh/actions/workflows/main.yml/badge.svg)](https://github.com/microsoft/cookie-doh/actions/workflows/main.yml)
[![Checked with pyright](https://microsoft.github.io/pyright/img/pyright_badge.svg)](https://microsoft.github.io/pyright/)
[![uv](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/uv/main/assets/badge/v0.json)](https://github.com/astral-sh/uv)
[![Ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ruff/main/assets/badge/v2.json)](https://github.com/astral-sh/ruff)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Cookie-doh is a repository template for creating single Python package projects that include pre-configured development tools.

## :woman_shrugging: Why use cookie-doh?

* :seedling: Improve your development workflow (checks, formatting, remote dev, etc.).

* :scroll: Uses [uv](https://docs.astral.sh/uv) for dependency management (configured and fast).

* :tropical_drink: quick and easy to start new projects!

:link: Short-link: [https://aka.ms/cookie-doh]()

:star: Star this repo to show your support!

-----------------------------------------------------------------

## :rocket: Getting started with cookie-doh

This template uses [uv](https://docs.astral.sh/uv/getting-started/installation/) and
 [_copier_](https://github.com/copier-org/copier) to create new repositories:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh  # Install uv
uv tool install copier  # Install copier
copier copy gh:microsoft/cookie-doh <new-repo-folder>  # Create new project
```

## :notebook_with_decorative_cover: Documentation

Visit the documentation:

<https://microsoft.github.io/cookie-doh/>

:point_right: Go to [new project](https://microsoft.github.io/cookie-doh/getting_started/) for first steps!

## :space_invader: Codespaces

Learn about [GitHub Codespaces](https://docs.github.com/en/codespaces) and [DevPod](https://devpod.sh/).

:point_right: Click below to clone or fork this repository automatically and start developing:

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/microsoft/cookie-doh)

[![Open in DevPod!](https://devpod.sh/assets/open-in-devpod.svg)](https://devpod.sh/open#https://github.com/microsoft/cookie-doh)

## :gear: Devcontainer

Learn about [Devcontainers](https://containers.dev).
Requires [Docker](https://www.docker.com/get-started/) installed on your local machine.

:point_right: Follow instructions for [VSCode](https://code.visualstudio.com/docs/devcontainers/tutorial)
and/or [PyCharm](https://www.jetbrains.com/help/pycharm/connect-to-devcontainer.html).

## :computer: Local development

:point_right: Follow [instructions](https://microsoft.github.io/cookie-doh/dev_setup)
to set up your local environment.

## :hammer_and_wrench: Development tools

Cookie-doh uses and generates projects with the following tools to help the development experience:

* [uv](https://docs.astral.sh/uv/) for dependency management, virtual environments and
packaging. Configured so that your code is readily importable.
* [ruff](https://docs.astral.sh/ruff/) for formatting and linting: helps you write clean and uniform code across collaborations.
* [pytest](https://docs.pytest.org/en/stable/) for testing: ensures your code is working as expected.
* [pyright](https://github.com/microsoft/pyright) for static annotations: helps identify simple errors and makes your code more readable!
* [codespell](https://github.com/codespell-project/codespell) for spell checking: pinpoints spelling errors across code and documents.
* [CI workflows](https://en.wikipedia.org/wiki/Continuous_integration): automates validation when you submit a PR or merge to `main` branch.

Optional tools (configurable when you create a new project):

* [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) for beautiful markdown documentation builds (like [cookie-doh](https:microsoft.github.io/cookie-doh)'s).
* [pre-commit](https://pre-commit.com/) for quick validation checks and fixes before committing.
* [commitizen](https://commitizen-tools.github.io/commitizen/)
for writing [conventional commits](https://www.conventionalcommits.org/), to help write better commit messages
and track changes through [time](https://github.com/microsoft/cookie-doh/blob/main/CHANGELOG.md).

## :mountain: Contributing

This project welcomes contributions and suggestions. Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit <https://cla.opensource.microsoft.com>.

When you submit a pull request, a CLA bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., status check, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.

## :balance_scale: Trademarks

This project may contain trademarks or logos for projects, products, or services. Authorized use of Microsoft
trademarks or logos is subject to and must follow
[Microsoft's Trademark & Brand Guidelines](https://www.microsoft.com/en-us/legal/intellectualproperty/trademarks/usage/general).
Use of Microsoft trademarks or logos in modified versions of this project must not cause confusion or imply Microsoft sponsorship.
Any use of third-party trademarks or logos are subject to those third-party's policies.
