# Examples & Tutorials

Working code examples, tutorials, and demonstrations for AI governance tools, apps, and agents.

## Overview

This directory contains practical, executable examples showing how to use the tools and applications in this repository. All examples are tested and maintained.

## Directory Structure

```
examples/
├── quickstart/     # Quick start examples (5-10 minutes)
├── tutorials/      # Step-by-step tutorials (30-60 minutes)
└── use-cases/      # Real-world use case demonstrations
```

## Quick Start Examples

Simple, focused examples to get started quickly.

*Examples will be added here as tools are developed*

<!-- Example:
### Bias Detection Quick Start
**Time**: 5 minutes
**Prerequisites**: Python 3.9+
**Location**: `quickstart/bias-detection/`

```python
from ai_governance.tools.bias_detector import BiasDetector

# Load your model
detector = BiasDetector()
results = detector.analyze(model, dataset)
print(results.summary())
```

[View full example →](quickstart/bias-detection/)
-->

## Tutorials

In-depth, step-by-step tutorials covering complete workflows.

*Tutorials will be added here*

<!-- Example:
### Building a Governance Pipeline
**Time**: 45 minutes
**Level**: Intermediate
**Location**: `tutorials/governance-pipeline/`

Learn to build an end-to-end governance pipeline:
1. Model validation
2. Bias detection
3. Compliance checking
4. Audit report generation

[Start tutorial →](tutorials/governance-pipeline/)
-->

## Use Cases

Real-world scenarios demonstrating governance in action.

*Use cases will be added here*

<!-- Example:
### Deploying a Compliant ML Model
**Location**: `use-cases/model-deployment/`

Complete example of deploying an ML model with governance:
- Pre-deployment validation
- Runtime monitoring
- Audit trail generation
- Compliance reporting

[View use case →](use-cases/model-deployment/)
-->

## Running Examples

### Prerequisites

```bash
# Install repository in development mode
pip install -e ".[dev]"

# Or install specific example dependencies
pip install -r examples/quickstart/bias-detection/requirements.txt
```

### Running an Example

```bash
# Navigate to example directory
cd examples/quickstart/bias-detection/

# Run the example
python example.py
```

### Jupyter Notebooks

Many examples are available as Jupyter notebooks:

```bash
# Install Jupyter
pip install jupyter

# Start Jupyter
jupyter notebook

# Open example notebook
# examples/tutorials/governance-pipeline/tutorial.ipynb
```

## Example Structure

Each example follows this structure:

```
example-name/
├── README.md           # Example documentation
├── requirements.txt    # Python dependencies
├── example.py          # Main example code
├── notebook.ipynb      # Optional Jupyter notebook
├── data/               # Sample data (if needed)
└── outputs/            # Example outputs (gitignored)
```

### README Template

```markdown
# Example Name

## Overview
Brief description of what this example demonstrates.

## Prerequisites
- Python 3.9+
- Additional requirements

## Installation
```bash
pip install -r requirements.txt
```

## Usage
```bash
python example.py
```

## Expected Output
Description of what you should see.

## Learn More
- Related documentation
- Related tutorials
```

## Contributing Examples

### Before Creating an Example

1. **Check for duplicates**: Review existing examples
2. **Ensure it works**: Test thoroughly
3. **Keep it focused**: One concept per example
4. **Make it accessible**: Clear comments, simple code

### Creating a New Example

1. **Create directory** in appropriate location:
   ```bash
   mkdir -p examples/quickstart/my-example
   ```

2. **Add required files**:
   - README.md (using template above)
   - requirements.txt
   - example.py or notebook.ipynb

3. **Test the example**:
   ```bash
   # Fresh virtual environment
   python -m venv test-env
   source test-env/bin/activate
   pip install -r examples/quickstart/my-example/requirements.txt
   python examples/quickstart/my-example/example.py
   ```

4. **Update this README** to list your example

### Example Guidelines

**Code Quality**:
- Clear, readable code
- Comprehensive comments
- Error handling
- Type hints

**Documentation**:
- Explain the "why", not just the "what"
- Include expected outputs
- Link to relevant docs
- Note any gotchas

**Data**:
- Use small, synthetic datasets
- Include data in repo or provide download script
- Clearly state data licenses

**Dependencies**:
- Minimize external dependencies
- Pin versions in requirements.txt
- Test with specified versions

## Example Categories

### Tools Examples
- Using governance tools standalone
- Integrating tools with existing ML pipelines
- Customizing tool configurations

### Apps Examples
- Deploying governance applications
- Using application APIs
- Integrating apps with other systems

### Agents Examples
- Creating custom Claude skills
- Building multi-agent workflows
- Integrating with LangChain/AutoGen

### Integration Examples
- Integrating with MLflow
- Using with Kubeflow Pipelines
- Adding governance to existing systems

## Testing Examples

All examples should be tested:

```bash
# Test all examples
pytest examples/

# Test specific example
pytest examples/quickstart/bias-detection/test_example.py
```

## Common Patterns

### Loading Models
```python
# Use a standard model loading pattern
from ai_governance.tools.shared import load_model

model = load_model("path/to/model")
```

### Configuration
```python
# Use YAML for configuration
from ai_governance.tools.shared import load_config

config = load_config("config.yaml")
```

### Logging
```python
# Use standard logging
from ai_governance.tools.shared import get_logger

logger = get_logger(__name__)
logger.info("Running example...")
```

## Jupyter Notebook Guidelines

### Setup Cell
Always include a setup cell:
```python
# Install dependencies (if needed)
%pip install -q ai-governance

# Imports
import numpy as np
import pandas as pd
from ai_governance.tools import BiasDetector

# Configuration
import warnings
warnings.filterwarnings('ignore')
```

### Documentation Cells
Use markdown cells liberally:
- Explain each section
- Show expected outputs
- Provide context

### Best Practices
- Keep cells small and focused
- Show intermediate results
- Include visualization
- Add error handling

## Resources

### Learning Paths
1. **Beginner**: Start with quickstart examples
2. **Intermediate**: Work through tutorials
3. **Advanced**: Study use cases

### External Resources
- [AI Governance Best Practices](../resources/knowledge-base/concepts/)
- [Tool Documentation](../tools/README.md)
- [Application Guides](../apps/README.md)

## Contributing

See [CONTRIBUTING.md](../CONTRIBUTING.md) for:
- Example contribution guidelines
- Code quality standards
- Review process

## License

All examples are licensed under the MIT License. See [LICENSE](../LICENSE) for details.
