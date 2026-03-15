.PHONY: help setup install clean test lint format type-check docs dev ci

# Default target
help:
	@echo "AI Governance - Development Commands"
	@echo ""
	@echo "Setup & Installation:"
	@echo "  make setup         - Complete development environment setup"
	@echo "  make install       - Install package in development mode"
	@echo ""
	@echo "Code Quality:"
	@echo "  make lint          - Run linting checks"
	@echo "  make format        - Format code with ruff and black"
	@echo "  make type-check    - Run type checking with mypy"
	@echo ""
	@echo "Testing:"
	@echo "  make test          - Run all tests"
	@echo "  make test-fast     - Run tests without coverage"
	@echo "  make test-cov      - Run tests with coverage report"
	@echo ""
	@echo "Documentation:"
	@echo "  make docs          - Build documentation"
	@echo "  make docs-serve    - Serve documentation locally"
	@echo ""
	@echo "Development:"
	@echo "  make dev           - Start development environment"
	@echo "  make clean         - Clean build artifacts"
	@echo ""
	@echo "CI/CD:"
	@echo "  make ci            - Run all CI checks (lint, type, test)"

# Setup development environment
setup: install
	@echo "Setting up development environment..."
	@pip install -e ".[dev]"
	@git lfs install
	@echo "Development environment ready!"

# Install package in development mode
install:
	@echo "Installing package..."
	@pip install -e .

# Clean build artifacts and caches
clean:
	@echo "Cleaning build artifacts..."
	@rm -rf build/
	@rm -rf dist/
	@rm -rf *.egg-info
	@rm -rf .pytest_cache/
	@rm -rf .mypy_cache/
	@rm -rf .ruff_cache/
	@rm -rf htmlcov/
	@rm -rf .coverage
	@find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
	@find . -type f -name "*.pyc" -delete
	@echo "Clean complete!"

# Run tests
test:
	@echo "Running tests with coverage..."
	@pytest

# Run tests without coverage (faster)
test-fast:
	@echo "Running tests (fast mode)..."
	@pytest --no-cov -x

# Run tests with HTML coverage report
test-cov:
	@echo "Running tests with HTML coverage..."
	@pytest --cov-report=html
	@echo "Coverage report: htmlcov/index.html"

# Linting
lint:
	@echo "Running linting checks..."
	@ruff check .

# Format code
format:
	@echo "Formatting code..."
	@ruff format .
	@black .
	@echo "Formatting complete!"

# Type checking
type-check:
	@echo "Running type checks..."
	@mypy tools apps

# Build documentation
docs:
	@echo "Building documentation..."
	@cd docs && make html
	@echo "Documentation built: docs/_build/html/index.html"

# Serve documentation locally
docs-serve:
	@echo "Serving documentation at http://localhost:8000"
	@mkdocs serve

# Start development environment
dev:
	@echo "Starting development environment..."
	@echo "Use Ctrl+C to stop"
	# Add commands to start development servers here

# Run all CI checks
ci: lint type-check test
	@echo "All CI checks passed!"

# Git hooks setup
hooks:
	@echo "Setting up git hooks..."
	@echo "#!/bin/sh\nmake lint" > .git/hooks/pre-commit
	@chmod +x .git/hooks/pre-commit
	@echo "Git hooks installed!"

# Update dependencies
update-deps:
	@echo "Updating dependencies..."
	@pip install --upgrade pip
	@pip install --upgrade -e ".[dev]"
	@echo "Dependencies updated!"

# Run security checks
security:
	@echo "Running security checks..."
	@pip install safety
	@safety check
	@echo "Security check complete!"
