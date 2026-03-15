# External Tools & Integrations

Forked repositories, third-party tools, and integrations with external AI governance frameworks.

## Overview

This directory manages external code and tools that complement our original development work. It provides clear separation between original work and external contributions, ensuring proper attribution and license compliance.

## Directory Structure

```
external/
├── forks/          # Git submodules for forked repositories
├── integrations/   # Wrappers and integrations for third-party tools
└── patches/        # Custom patches for external tools
```

## Forked Repositories

### Why Fork?

Fork external tools when you need to:
- Customize for specific governance use cases
- Add features not available upstream
- Fix bugs not yet merged upstream
- Maintain a stable version for your needs

### Adding a Fork

1. **Fork on GitHub** (or other platform)
2. **Add as submodule**:
   ```bash
   git submodule add https://github.com/youruser/forked-repo external/forks/tool-name
   ```

3. **Document the fork** (see template below)

### Fork Documentation Template

Create `external/forks/tool-name/FORK_INFO.md`:

```markdown
# Tool Name Fork

## Original Repository
- **Upstream**: https://github.com/original/repo
- **License**: Apache 2.0
- **Version**: v1.2.3

## Fork Purpose
Brief explanation of why this was forked.

## Modifications
- Feature A: Description
- Bug fix B: Description
- Custom integration C: Description

## Sync Status
- Last synced: 2024-01-15
- Upstream commits ahead: 5
- Custom commits: 3

## Maintenance
- **Owner**: @username
- **Sync Schedule**: Monthly
- **Merge Strategy**: Rebase preferred

## Usage
How to use this fork in the project.
```

### Managing Forks

#### Syncing with Upstream

```bash
# Navigate to fork
cd external/forks/tool-name

# Add upstream remote
git remote add upstream https://github.com/original/repo

# Fetch upstream changes
git fetch upstream

# Merge upstream changes
git checkout main
git merge upstream/main

# Or rebase
git rebase upstream/main

# Push to your fork
git push origin main
```

#### Updating Submodule

```bash
# From repository root
git submodule update --remote external/forks/tool-name

# Commit submodule update
git add external/forks/tool-name
git commit -m "Update tool-name fork to latest version"
```

### Fork Inventory

*List of forked tools will be maintained here*

<!-- Example:
#### ModelCards
- **Purpose**: Enhanced model card generation
- **Upstream**: https://github.com/org/modelcards
- **Custom Features**: NIST RMF integration
- **Status**: Active
- **Location**: `forks/modelcards/`
-->

## Integrations

### Purpose

The integrations directory contains wrappers and adapters for third-party tools that we don't fork but integrate with our governance framework.

### Integration Structure

```
integrations/tool-name/
├── README.md              # Integration documentation
├── adapter.py             # Adapter/wrapper code
├── config/                # Configuration templates
│   └── default.yaml
├── examples/              # Usage examples
│   └── basic_usage.py
└── tests/
    └── test_adapter.py
```

### Creating an Integration

1. **Create integration directory**:
   ```bash
   mkdir -p external/integrations/tool-name
   ```

2. **Write adapter code**:
   ```python
   # external/integrations/tool-name/adapter.py
   from typing import Any, Dict
   import external_tool


   class ToolNameAdapter:
       """Adapter for integrating Tool Name with AI governance framework."""

       def __init__(self, config: Dict[str, Any]):
           self.client = external_tool.Client(**config)

       def run_governance_check(self, artifact: Any) -> Dict[str, Any]:
           """Run governance check using external tool."""
           # Adapter logic here
           pass
   ```

3. **Add configuration**:
   ```yaml
   # external/integrations/tool-name/config/default.yaml
   tool_name:
     api_key: ${TOOL_API_KEY}
     endpoint: https://api.tool.com
     options:
       strict_mode: true
   ```

4. **Document the integration**:
   ```markdown
   # Tool Name Integration

   ## Overview
   Integration with Tool Name for [specific governance task].

   ## Installation
   ```bash
   pip install external-tool-sdk
   ```

   ## Configuration
   See config/default.yaml

   ## Usage
   ```python
   from external.integrations.tool_name import ToolNameAdapter

   adapter = ToolNameAdapter(config)
   result = adapter.run_governance_check(model)
   ```

   ## License
   Tool Name is licensed under [license]
   ```

### Integration Examples

#### MLflow Integration
```python
# external/integrations/mlflow/adapter.py
from mlflow.tracking import MlflowClient


class MLflowGovernanceAdapter:
    """Integrate governance checks with MLflow tracking."""

    def __init__(self, tracking_uri: str):
        self.client = MlflowClient(tracking_uri)

    def log_governance_metrics(self, run_id: str, metrics: dict):
        """Log governance metrics to MLflow run."""
        for key, value in metrics.items():
            self.client.log_metric(run_id, f"governance.{key}", value)
```

#### Kubeflow Integration
```python
# external/integrations/kubeflow/adapter.py
from kfp import dsl


class KubeflowGovernanceComponent:
    """Governance components for Kubeflow Pipelines."""

    @staticmethod
    @dsl.component
    def compliance_check(model_uri: str) -> bool:
        """Compliance check component for Kubeflow."""
        # Implementation
        pass
```

## Custom Patches

### Purpose

Maintain custom patches for external tools without forking the entire repository.

### Creating Patches

1. **Make changes in external tool**:
   ```bash
   cd /tmp/external-tool
   # Make your changes
   git add -A
   git commit -m "Add governance integration"
   ```

2. **Generate patch file**:
   ```bash
   git format-patch -1 HEAD --stdout > \
     /path/to/ai-governance/external/patches/external-tool-governance.patch
   ```

3. **Document the patch**:
   ```markdown
   # external/patches/README.md

   ## external-tool-governance.patch
   - **Tool**: External Tool v1.2.3
   - **Purpose**: Adds governance logging
   - **Files Modified**: src/main.py, src/logger.py
   - **Upstream PR**: #123 (if applicable)
   ```

### Applying Patches

```bash
# Clone the tool
git clone https://github.com/org/external-tool /tmp/external-tool

# Apply patch
cd /tmp/external-tool
git apply /path/to/ai-governance/external/patches/external-tool-governance.patch

# Test the changes
# ...

# Use the patched version
```

### Patch Inventory

*List of maintained patches*

<!-- Example:
#### bias-detector-logging.patch
- **Tool**: bias-detector v2.0.1
- **Purpose**: Add structured logging
- **Status**: Pending upstream merge
- **PR**: #456
-->

## License Compliance

### Tracking Licenses

Maintain a license inventory in `external/LICENSES.md`:

```markdown
# External Tool Licenses

## Forked Repositories

### Tool Name
- **License**: Apache 2.0
- **Copyright**: Original Authors
- **Modifications**: Listed in FORK_INFO.md
- **Compatible with MIT**: ✓

## Integrated Tools

### External SDK
- **License**: MIT
- **Copyright**: SDK Authors
- **Usage**: API integration only
```

### Compatible Licenses

Our MIT license is compatible with:
- MIT
- Apache 2.0
- BSD (2-clause, 3-clause)
- ISC

Check compatibility for:
- GPL/LGPL (can use, but be aware of copyleft)
- Commercial licenses (verify terms)

## Best Practices

### Forking
- **Document everything**: Why forked, what changed, sync status
- **Sync regularly**: Keep up with upstream changes
- **Contribute back**: Submit PRs to upstream when possible
- **Clear naming**: Use descriptive submodule names

### Integration
- **Loose coupling**: Use adapter pattern
- **Configuration**: Externalize all configuration
- **Error handling**: Gracefully handle external failures
- **Testing**: Mock external dependencies in tests

### Maintenance
- **Track versions**: Document versions of external tools
- **Monitor updates**: Watch for security patches
- **Review regularly**: Quarterly review of external deps
- **Deprecation plan**: Have fallback if tool discontinued

## Security Considerations

### Dependency Security
- Regularly update dependencies
- Use dependency scanning tools
- Pin versions in production
- Review security advisories

### API Keys & Secrets
- Never commit API keys
- Use environment variables
- Rotate keys regularly
- Use secrets management

## Contributing

See [CONTRIBUTING.md](../CONTRIBUTING.md) for:
- Fork creation process
- Integration standards
- Patch guidelines
- License compliance

## Resources

### Git Submodules
- [Git Submodules Documentation](https://git-scm.com/book/en/v2/Git-Tools-Submodules)

### License Compatibility
- [OSI License Compatibility](https://opensource.org/licenses/category)
- [Choose a License](https://choosealicense.com/)

## License

Original integration code is under MIT License. External tools retain their respective licenses. See [LICENSE](../LICENSE) and individual tool licenses for details.
