
autodocs:
	-sphinx-autobuild docs docs/_build/html


gendocs:
	-sphinx-apidoc --output-dir docs src/sphinxy --separate
	-cd docs && make html && python -m http.server --directory _build/html
	-cd ..
