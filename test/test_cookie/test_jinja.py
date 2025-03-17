import re
from pathlib import Path

import pytest
from jinja2 import Environment, FileSystemLoader

TEMPLATE_PATH = Path()
ITEMS = {
    "organization": "microsoft",
    "project_name": "cookie-doh",
    "module_name": "cookie",
    "license": "Microsoft Corporation",
    "documentation": True,
    "precommit": True,
    "commitizen": True,
    "microsoft_internal": True,
}


@pytest.fixture(scope="module")
def environment() -> Environment:
    return Environment(loader=FileSystemLoader(TEMPLATE_PATH))


@pytest.fixture(
    params=[
        ".github/workflows/automerge.yml.jinja",
        ".github/workflows/main.yml.jinja",
        ".github/workflows/pr.yml.jinja",
        ".devcontainer/post-create.sh.jinja",
        ".pre-commit-config.yaml.jinja",
        "docs/getting_started.md.jinja",
        "Dockerfile.jinja",
        "LICENSE.jinja",
        "README.md.jinja",
        "ruff.toml.jinja",
        "SUPPORT.md.jinja",
        "pyproject.toml.jinja",
        "ruff.toml.jinja",
    ]
)
def template_file(request: pytest.FixtureRequest) -> str:
    return request.param


def test_template(environment: Environment, template_file: str):
    template = environment.get_template(template_file)
    content = template.render(**ITEMS) + "\n"
    if template_file in [
        "README.md.jinja",
        "pyproject.toml.jinja",
        "docs/getting_started.md.jinja",
    ]:
        return
    rootfile = re.sub(r"{%.*?%}", "", template_file)
    rootfile = Path(rootfile.replace(".jinja", ""))
    with rootfile.open() as f:
        expected = f.read()
    assert content == expected
