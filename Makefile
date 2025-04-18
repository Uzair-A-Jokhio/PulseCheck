install:
		pip install --upgrade pip &&\
			pip install -r requirements.txt
		python -m textblob.download_corpora
test:
		python -m pytest -vv --cov=wikiphrases --cov=nlplogic test_corenlp.py
format:
		black *.py nlplogic
lint:
		pylint --disable=R,C *.py nlplogic/*.py
venv:
		python -m venv .venv

all: install lint test format