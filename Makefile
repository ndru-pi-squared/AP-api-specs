.PHONY: docs
docs:
	- docker build -t final-container .
	- docker run -v $$PWD/docs:/app/docs final-container
