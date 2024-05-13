# :rocket: new project

## :tada: Create a new project

1. [Install copier](dev_setup#copier).
2. Create a new project from the template:
    ```bash
    copier gh:microsoft/cookie-doh <project-folder>
    ```


## :walking: First steps with the new project
Once you've created your new repository, the creation process will tell you to:

1. Change directory and initialize git:
    ```bash
    cd <project-folder>
    git init
    ```
2. Configure upstream / remote repository:

    a. if you have an existing repository:
    ```bash
    git remote add origin https://github.com/{{organization}}/{{project_name}}.git
    git pull origin main  # and resolve any conflicts
    ```
    b. or, create a new repository (install [GitHub CLI](https://cli.github.com/) if necessary)
    ```bash
    gh auth login
    gh repo create {{organization}}/{{project_name}} --private --remote=origin
    ```
3. Install dependencies:
    ```bash
    poetry add <dependencies>
    poetry install
    ```
4. Commit the initial files:
    ```bash
    git add .
    pre-commit install --install-hooks  # only if you chose to get pre-commit in your project
    git commit -m "init: initialize repo"
    git push -u origin main
    ```
5. Happy coding! :rocket:


## :feather: Update your project

In the future you can keep track of the latest changes of
[cookie-doh](https://aka.ms/cookie-doh) by running:
```bash
copier update
```
Get more options with `copier --help` and/or `copier update --help`.


## :house_with_garden: Project description

### :bricks: Main structure
Your new repo will have the following structure:

```
/docs  # only if you enabled documentation builds
    ├── index.md
    └── .pages
/src/{{project_name}}
    ├── __init__.py
    └── example.py
/test/test_{{project_name}}
    ├── __init__.py
    └── test_example.py
pyproject.toml
README.md
```

* If you use VSCode, load your project as a
[workspace](https://code.visualstudio.com/docs/editor/workspaces#_singlefolder-workspaces)
by opening your project's folder.
This will set up VSCode with convenient settings and recommended extensions.
* Put your python code in `src/{{project_name}}`, tests in `test/test_{{project_name}}`,
and markdown documentation in `docs`.
* When you run `poetry install` it will install the `src` package in editable mode, so every package
and module you add will be available to import locally in your project.
* Add new dependencies to `pyproject.toml` and run `poetry install` to install them or
run `poetry add <package>` to add a new dependency. Run `poetry update` to update all dependencies.
Poetry will create a `.venv` folder with a virtual environment inside your project (configurable
with `poetry.toml`).
* To run tests, use `poetry run pytest`, or if you use [_direnv_](https://github.com/direnv/direnv)
and have enabled it, simply run `pytest`. See setting up your development environment below.
* You will only get the `docs` folder if you enabled documentation builds in the _copier_ prompts.
Add your markdown documentation to the `docs` folder and run `bin/serve-docs` to see a live preview
(or `serve-docs` if you use _direnv_). Make changes to `.pages` to edit your navigation pane.
* Edit your `README.md` file to include information about your project, how to install it,
how to use it, and any other relevant information you may want to share.


### :building_construction: Configuration, commands and workflows

Further relevant configuration files, binaries and workflows are shown in the following tree:
```
ruff.toml
pyrightconfig.json
.codespellrc
/bin
/.github
    ├── dependabot.yml
    └── workflows
        ├── main.yml
        ├── pr.yml
        └── weekly.yml
.envrc
```

* The `ruff.toml` file is used by _ruff_ to configure code formatting and linting rules, including
black, isort, flake8, and others. Use this file to configure your code style and linting rules
and exceptions. It runs fast and it is integrated in VSCode with the _ruff_ extension.
* The `pyrightconfig.json` file is used by _pyright_ to configure type checking rules and exceptions.
You can add exceptions to the `pyrightconfig.json` file to suppress warnings or errors.
We encourage you to use type annotations in your code to help detect errors early, but most
importantly, to improve readability of your code (to your future self and others).
* The `.codespellrc` file is used by _codespell_ to check spelling in your files and code.
If _codespell_ detects spelling errors, it will suggest corrections.
You can add exceptions to the `.codespellrc` file.
* The `bin` folder includes scripts to help you with common tasks. For example `bin/check-all` will
run all checks including `pre-commit`, `ruff`, `pytest`, `pyright` and `mkdocs` (if enabled).
You should run this check prior to committing changes to your repository or pushing to your remote.
* The `.github` folder includes `.dependabot.yml` for automated dependency updates in GitHub,
and workflows folder for automatic CI checks on pull requests, pushes, and weekly scheduled tasks.
* The `.envrc` file is used by _direnv_ to manage environment variables and load python virtual
environments automatically. We strongly encourage you to use _direnv_ to manage your [development
environment](dev_setup.md#direnv) for its convenience.


### :cherries: Pre-commit, commitizen and documentation (optional)

Other configuration files may include (depending on your choices during the _copier_ process):
```
.pre-commit-config.yaml
.cz.toml
mkdocs.yml
.apidoc_conf.py
```

* Pre-commit is a tool to run code formatting and linting before committing changes.
You can run `pre-commit run --all-files` to run a bunch of checks manually.
Add new hooks or remove existing ones in the `.pre-commit-config.yaml` file.
* The `.cz.toml` file is used by _commitizen_ to write commit message.
It relies on the `cz-conventional-gitmoji` plugin to combine gitmoji and conventional commits.
Write a commit as `fix: correct typo in README` or `feat: add new feature` and `pre-commit` will
prepend a corresponding gitmoji to your commit message.
Run `cz commit` to write a commit message interactively listing all possible types and options.
* Finally, the `mkdocs.yml` and `.apidoc_conf.py` file are used by _mkdocs_ and _sphinx_ to
configure your documentation build and API reference docstrings.
