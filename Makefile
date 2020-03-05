check:
	python setup.py check --metadata --restructuredtext --strict
dist: check
	python setup.py sdist bdist_wheel
upload: dist
	twine upload --skip-existing -s dist/*.whl dist/*.tar.gz
clean:
	git clean -xdf
