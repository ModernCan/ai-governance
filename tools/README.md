# AI Governance Tools

Custom-built tools and utilities for AI governance, compliance, and safety.

## Overview

This directory contains original development work for standalone governance tools, libraries, and command-line utilities. Each tool is self-contained and focuses on a specific aspect of AI governance.

## Tools Catalog

*Tools will be listed here as they are developed.*

<!-- Example structure:
### Model Auditor
**Purpose**: Automated compliance checking for ML models
**Status**: In Development
**Location**: `tools/model-auditor/`

[View documentation →](model-auditor/README.md)
-->

## Shared Utilities

### `/shared/common/`
Common libraries and utilities used across multiple tools:
- Logging utilities
- Configuration management
- Data validation helpers
- API clients

### `/shared/schemas/`
Shared data schemas and validation models:
- Model metadata schemas
- Compliance report formats
- Audit trail specifications

## Creating a New Tool

### Quick Start

1. **Create tool directory**:
   ```bash
   mkdir -p tools/my-tool/src/ai_governance/my_tool
   cd tools/my-tool
   ```

2. **Add basic structure**:
   ```
   my-tool/
   ├── README.md              # Tool documentation
   ├── pyproject.toml         # Dependencies and configuration
   ├── src/
   │   └── ai_governance/
   │       └── my_tool/
   │           ├── __init__.py
   │           ├── core.py
   │           └── cli.py     # If CLI tool
   └── tests/
       └── test_my_tool.py
   ```

3. **Create pyproject.toml**:
   ```toml
   [project]
   name = "ai-governance-my-tool"
   version = "0.1.0"
   dependencies = [
       # Add dependencies here
   ]
   ```

4. **Update this README** to list your new tool

### Tool Guidelines

- **Single Responsibility**: Each tool should do one thing well
- **Reusable**: Design for reuse across different contexts
- **Well-Documented**: Include clear README and docstrings
- **Tested**: Add comprehensive test coverage
- **Type-Hinted**: Use Python type hints throughout

### Tool Categories

Tools typically fall into these categories:

#### Compliance & Auditing
- Model compliance checkers
- Audit trail generators
- Regulatory requirement validators

#### Fairness & Bias
- Bias detection algorithms
- Fairness metrics calculators
- Demographic parity analyzers

#### Safety & Security
- Input validation tools
- Output filtering utilities
- Adversarial robustness testing

#### Transparency & Explainability
- Model card generators
- Feature importance analyzers
- Decision explanation tools

#### Data Governance
- Data lineage trackers
- Privacy compliance checkers
- Dataset documentation generators

## Using Shared Utilities

To use shared utilities in your tool:

```python
from ai_governance.shared.common import logger, config
from ai_governance.shared.schemas import ModelMetadata

# Use shared logger
logger.info("Starting analysis...")

# Use shared schemas
metadata = ModelMetadata(
    name="my-model",
    version="1.0.0",
    framework="pytorch"
)
```

## Development

### Installation

Install all tools in development mode:

```bash
# From repository root
pip install -e ".[dev]"
```

### Running Tests

```bash
# Test all tools
pytest tools/

# Test specific tool
pytest tools/my-tool/
```

### Linting

```bash
# Lint all tools
ruff check tools/

# Format code
ruff format tools/
```

## Examples

See the `/examples/` directory for:
- Tool usage examples
- Integration patterns
- Common workflows

## Contributing

See [CONTRIBUTING.md](../CONTRIBUTING.md) for guidelines on:
- Creating new tools
- Code standards
- Testing requirements
- Documentation expectations

## License

All tools are licensed under the MIT License. See [LICENSE](../LICENSE) for details.
