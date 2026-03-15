# Contributing to AI Governance

Thank you for your interest in contributing to this AI governance repository! This guide will help you understand where and how to add different types of content.

## Table of Contents

- [Repository Structure](#repository-structure)
- [Where to Add Content](#where-to-add-content)
- [Code Standards](#code-standards)
- [Development Workflow](#development-workflow)
- [Pull Request Process](#pull-request-process)
- [Style Guidelines](#style-guidelines)

## Repository Structure

This repository is organized by **purpose** rather than technology. Understanding this principle is key to contributing effectively.

### Directory Organization

| Directory | Purpose | What Goes Here |
|-----------|---------|----------------|
| `/tools/` | Custom governance tools | Standalone utilities, libraries, CLI tools you develop |
| `/apps/` | Production applications | Full applications with UIs, APIs, deployment configs |
| `/agents/` | Agentic AI systems | Claude skills, agent plugins, multi-agent workflows |
| `/resources/` | Knowledge base | Books, papers, standards, guides, curated content |
| `/external/` | Third-party code | Forked repos (as submodules), integrations, patches |
| `/examples/` | Demonstrations | Working code samples, tutorials, use cases |
| `/docs/` | Documentation | Guides, architecture decisions, API docs |
| `/tests/` | Test suites | Integration tests, e2e tests, fixtures |
| `/scripts/` | Automation | Setup scripts, dev utilities, CI/CD helpers |
| `/config/` | Configuration | Default configs, examples, schemas |

## Where to Add Content

### Adding a New Tool

If you're creating a **standalone utility** or **library**:

1. Create a new directory under `/tools/`:
   ```bash
   mkdir -p tools/my-tool
   cd tools/my-tool
   ```

2. Add the tool structure:
   ```
   tools/my-tool/
   ├── README.md              # Tool-specific documentation
   ├── pyproject.toml         # Dependencies and config
   ├── src/
   │   └── ai_governance/
   │       └── my_tool/
   │           └── __init__.py
   └── tests/
       └── test_my_tool.py
   ```

3. Update `/tools/README.md` to list your new tool

### Adding a New Application

If you're creating a **full application** (web app, API, dashboard):

1. Create a new directory under `/apps/`:
   ```bash
   mkdir -p apps/my-app
   ```

2. Add application structure:
   ```
   apps/my-app/
   ├── README.md
   ├── pyproject.toml         # or package.json for JS apps
   ├── src/
   ├── tests/
   └── deploy/                # Deployment configurations
   ```

3. Update `/apps/README.md` to list your new app

### Adding Agent-Based Systems

If you're creating **agents, skills, or workflows**:

- **Claude Code Skills**: Add to `/agents/claude-skills/`
- **Agent Plugins**: Add to `/agents/plugins/{framework}/`
- **Workflows**: Add to `/agents/workflows/`

### Adding Resources

If you're contributing **knowledge base content**:

- **Books**: Add PDFs to `/resources/books/pdfs/` (use Git LFS) and notes to `/resources/books/notes/`
- **Research Papers**: Add to `/resources/papers/by-topic/{topic}/`
- **Standards**: Add to `/resources/standards/{framework}/`
- **Blog Posts**: Save markdown to `/resources/blogs/curated/` or links to `/resources/blogs/links.md`

### Adding Forked Tools

If you're **integrating a third-party tool**:

1. Add as Git submodule:
   ```bash
   git submodule add <repo-url> external/forks/<tool-name>
   ```

2. Document in `/external/README.md`

3. If you make custom modifications, add patches to `/external/patches/`

## Code Standards

### Python Code

We use the following tools for code quality:

- **Ruff**: Linting and formatting
- **MyPy**: Type checking
- **Black**: Code formatting
- **Pytest**: Testing

Before committing, run:

```bash
# Format code
ruff format .

# Lint code
ruff check .

# Type check
mypy tools apps

# Run tests
pytest
```

Or use the Makefile:

```bash
make lint
make test
```

### Code Style

- Follow [PEP 8](https://pep8.org/) style guidelines
- Use type hints for function signatures
- Write docstrings for public functions and classes
- Keep functions focused and small
- Use meaningful variable names

### Example Code Style

```python
from typing import Dict, List, Optional


def analyze_model_bias(
    model_predictions: List[float],
    protected_attributes: Dict[str, List[str]],
    threshold: float = 0.8
) -> Optional[Dict[str, float]]:
    """Analyze bias in model predictions across protected attributes.

    Args:
        model_predictions: List of model prediction values
        protected_attributes: Dictionary mapping attribute names to values
        threshold: Threshold for flagging bias (default: 0.8)

    Returns:
        Dictionary of bias metrics per attribute, or None if insufficient data

    Example:
        >>> predictions = [0.9, 0.7, 0.8, 0.6]
        >>> attributes = {"gender": ["M", "F", "M", "F"]}
        >>> analyze_model_bias(predictions, attributes)
        {"gender": 0.85}
    """
    # Implementation here
    pass
```

## Development Workflow

### Setting Up Development Environment

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/ai-governance.git
   cd ai-governance
   ```

2. **Create virtual environment**:
   ```bash
   python -m venv .venv
   source .venv/bin/activate  # On Windows: .venv\Scripts\activate
   ```

3. **Install development dependencies**:
   ```bash
   pip install -e ".[dev]"
   ```

4. **Install Git LFS** (for large resources):
   ```bash
   git lfs install
   ```

### Making Changes

1. **Create a feature branch**:
   ```bash
   git checkout -b feature/my-feature
   ```

2. **Make your changes** following the structure guidelines above

3. **Add tests** for new functionality

4. **Run quality checks**:
   ```bash
   make lint
   make test
   ```

5. **Commit your changes**:
   ```bash
   git add .
   git commit -m "Add feature: brief description"
   ```

## Pull Request Process

1. **Ensure all tests pass** and code is properly formatted

2. **Update documentation**:
   - Add/update README files in relevant directories
   - Update main README.md if needed
   - Add docstrings to new code

3. **Create pull request** with:
   - Clear title describing the change
   - Summary of what changed and why
   - Reference to any related issues
   - Test plan or verification steps

4. **PR Template**:
   ```markdown
   ## Summary
   - Brief description of changes

   ## Type of Change
   - [ ] New tool
   - [ ] New application
   - [ ] Agent/skill
   - [ ] Resource addition
   - [ ] Bug fix
   - [ ] Documentation

   ## Testing
   - How to test these changes

   ## Checklist
   - [ ] Tests added/updated
   - [ ] Documentation updated
   - [ ] Code follows style guidelines
   - [ ] All tests pass
   ```

5. **Review process**:
   - Address reviewer feedback
   - Keep PR focused (one feature/fix per PR)
   - Ensure CI checks pass

## Style Guidelines

### Commit Messages

Use clear, descriptive commit messages:

```
Add bias detection tool for tabular data

- Implements statistical parity metrics
- Adds disparate impact analysis
- Includes comprehensive test suite
```

Format:
- First line: Imperative mood summary (50 chars or less)
- Blank line
- Detailed description if needed

### Documentation

- Use Markdown for all documentation
- Keep language clear and concise
- Include code examples where helpful
- Add diagrams for complex concepts

### README Files

Each major directory should have a README.md with:
- Purpose of the directory
- What belongs there
- How to use the contents
- Links to relevant documentation

## Questions or Issues?

- **Questions**: Open a [GitHub Discussion](https://github.com/yourusername/ai-governance/discussions)
- **Bugs**: Open a [GitHub Issue](https://github.com/yourusername/ai-governance/issues)
- **Security**: Email security concerns privately

## License

By contributing, you agree that your contributions will be licensed under the MIT License.

---

Thank you for contributing to AI governance! Your work helps make AI systems more responsible and trustworthy.
