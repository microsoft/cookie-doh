# :cookie: cookie-doh

[![main](https://github.com/microsoft/cookie-doh/actions/workflows/main.yml/badge.svg)](https://github.com/microsoft/cookie-doh/actions/workflows/main.yml)
[![Checked with pyright](https://microsoft.github.io/pyright/img/pyright_badge.svg)](https://microsoft.github.io/pyright/)
[![Ruff](https://img.shields.io/endpoint?url=https://raw.githubusercontent.com/astral-sh/ruff/main/assets/badge/v2.json)](https://github.com/astral-sh/ruff)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Cookie-doh info

<p align="center">
:point_right: Short-link: https://aka.ms/cookie-doh
</p>

-----------------------------------------------------------------


## :notebook_with_decorative_cover: Documentation
https://microsoft.github.io/cookie-doh


## :github: Source Code
https://github.com/microsoft/cookie-doh


## :rocket: Getting Started


### Optional system dependencies

We use the following optional dependencies for development:

* [direnv](https://direnv.net/): To manage environment variables and load python virtual environments automatically.
* [pyenv](https://github.com/pyenv/pyenv): To manage python versions.
* [pipx](https://pipxproject.github.io/pipx/): To install python packages in isolated environments.
{% if commitizen -%}
* [commitizen](https://commitizen-tools.github.io/commitizen/): To help with [conventional commits](https://www.conventionalcommits.org/en/v1.0.0/).
* [cz-conventional-gitmoji](https://github.com/ljnsn/cz-conventional-gitmoji): A commitizen plugin that combines gitmoji and conventional commits.
{%- endif %}
{% if precommit -%}
* [pre-commit](https://pre-commit.com/): To run code formatting and linting before committing.
{%- endif %}

### Required system dependencies

* [poetry](https://python-poetry.org/): To manage package dependencies and virtual environments.
* [python >= 3.10](https://www.python.org/)

For setting up the development environment:

* Clone the repository and cd into it.
* Install the dependencies with poetry:
```bash
poetry install
```

### Devcontainer

Learn about [Devcontainers](https://containers.dev/).
Requires [Docker](https://www.docker.com/get-started/) installed on your local machine.

:point_right: Follow instructions for [VSCode](https://code.visualstudio.com/docs/devcontainers/tutorial)
and/or [PyCharm](https://www.jetbrains.com/help/pycharm/connect-to-devcontainer.html).


### Codespaces

Learn about [GitHub Codespaces](https://docs.github.com/en/codespaces) and/or [DevPod](https://devpod.sh/).

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/{{organization}}/{{project_name}})

[![Open in DevPod!](https://devpod.sh/assets/open-in-devpod.svg)](https://devpod.sh/open#https://github.com/{{organization}}/{{project_name}})


--------------------------------------------

## :mountain: Contributing

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.opensource.microsoft.com.

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
