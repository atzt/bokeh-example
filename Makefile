PYTHON_VERSION=3.11.6

.PHONY: pyenv
pyenv:
	pyenv install ${PYTHON_VERSION} --skip-existing
	pyenv virtualenv-delete bokeh-example || true
	pyenv virtualenv ${PYTHON_VERSION} bokeh-example
	pyenv local bokeh-example

.PHONY: deps
deps:
	pip install -r ./requirements.txt
