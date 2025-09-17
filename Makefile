# Makefile for executing Python commands

.PHONY: install test e2e

# Define the pip command for installation
install:
  @echo "Running pip install..."
  pip install -r requirements.txt

# Define the pytest command for running tests
test:
  @echo "Running pytest..."
  pytest

# Define the e2e target that runs both install and test
e2e: install test
  @echo "End-to-end process completed."