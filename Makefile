install:
	pip install --upgrade pip && pip install -r requirements.txt

install-local:
	pip install -r local-requirements.txt

install-gcp:
	pip install --upgrade pip && pip install -r requirements.txt

install-aws:
	pip install --upgrade pip && pip install -r requirements.txt
	
install-aws-linux2:
	pip install --upgrade pip && pip install -r requirements.txt

format:
	black *.py

lint:
	pylint --disable=R,C hello.py 

test:
	python -m pytest -vv --cov=hello test_hello.py
all: install lint test
	