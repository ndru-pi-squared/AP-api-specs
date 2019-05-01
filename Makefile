.PHONY: docs
docs:
	- docker build -t final-container .
	- docker run -p 8080:8080 -v $$PWD/docs:/app/docs final-container