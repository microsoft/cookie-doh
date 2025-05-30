# :rocket: new project

## :tada: Create a new project

1. [Install uv](https://docs.astral.sh/uv/getting-started/installation/).
    ```bash
    curl -LsSf https://astral.sh/uv/install.sh | sh
    ```
2. [Install copier](dev_setup.md#copier).
    ```bash
    uv tool install copier
    ```
3. Create a new project from the template:
    ```bash
    copier gh:microsoft/cookie-doh <project-folder>
    ```

## :walking: First steps with your new project

Instructions: <https://microsoft.github.io/cookie-doh/dev_setup>

* Make sure you have `uv` installed.
* Install optional tools like `direnv` and `pre-commit`.

Once you've created your new repository, the creation process will tell you to:

1. Change directory and initialize git:

    ```bash
    cd <project-folder>  # direnv will ask you to type `direnv allow` (if you have direnv installed)
    git init
    ```

2. Configure upstream / remote repository:

    a. if you have an existing repository:

    ```bash
    git remote add origin https://github.com/{{organization}}/{{project_name}}.git
    git pull origin main  # and resolve any conflicts
    ```

    To resolve conflicts, you can rename conflicting files (like README.md) and then solve
    conflicts, or, continue without pulling, commit your changes, and then pull with
    `git pull origin main --allow-unrelated-histories` and solve the conflicts then.

    b. or, create a new repository (install [GitHub CLI](https://cli.github.com/) if necessary)

    ```bash
    gh auth login
    gh repo create {{organization}}/{{project_name}} --private --source=. --remote=origin
    ```

3. Install dependencies:

    ```bash
    uv add <dependencies>
    ```

4. Commit the initial files:

    ```bash
    git add .
    uv tool install pre-commit --with pre-commit-uv  # only if you want to install pre-commit
    pre-commit install --install-hooks  # only if you want to use pre-commit
    git commit -m "init: initialize repo"
    git push -u origin main
    ```

5. Happy coding! :rocket:

## :feather: Updating your project

In the future you can keep track of the latest changes of
[cookie-doh](https://aka.ms/cookie-doh) by running:

```bash
copier update
```

Get more options with `copier --help` and/or `copier update --help`.
