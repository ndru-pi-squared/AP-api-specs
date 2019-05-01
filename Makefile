.PHONY: docs
docs:
	- docker build -t final-container .
	- docker run -v C:\Users\adpit\Documents\GitHub\ndru-pi-squared\AP-api-specs\docs:/app/docs final-container
