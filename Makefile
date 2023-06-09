.PHONY: help

.DEFAULT_GOAL := help

# python packages (pypi)
clean:
	rm -rf *.egg-info build/ dist/

publish:
	$(MAKE) clean
	python setup.py sdist bdist_wheel
	python -m twine upload dist/*
