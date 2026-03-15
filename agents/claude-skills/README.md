# Claude Code Skills

Custom Claude Code skills for AI governance automation.

## Overview

Claude Code skills are specialized agents that extend Claude Code's capabilities for specific AI governance tasks such as code review, compliance checking, and policy enforcement.

## What are Claude Code Skills?

Skills are reusable, shareable agents that automate specific tasks within Claude Code. They can:
- Review code for governance compliance
- Check policies and standards
- Generate documentation
- Perform automated audits
- Monitor AI systems

## Available Skills

*Skills will be listed here as they are developed*

<!-- Example:
### Governance Reviewer
**Purpose**: Automated code review for AI safety and compliance
**Status**: In Development
**Location**: `governance-reviewer/`

Checks code for:
- AI safety best practices
- GDPR compliance
- Bias and fairness issues
- Security vulnerabilities

[View documentation →](governance-reviewer/README.md)
-->

## Creating a Claude Code Skill

### Skill Structure

```
skill-name/
├── README.md              # Skill documentation
├── skill.md               # Skill definition (main prompt)
├── config.yaml            # Configuration
├── examples/              # Example usage
│   └── example.md
└── tests/                 # Test cases
    └── test_skill.md
```

### Skill Definition

Create `skill.md` with your skill prompt:

````markdown
---
name: governance-reviewer
description: Reviews code for AI governance compliance
author: Your Name
version: 1.0.0
triggers:
  - /governance-review
  - /check-compliance
---

# Governance Reviewer Skill

You are an AI governance expert reviewing code for compliance and best practices.

## Your Tasks

1. **Review the code** for:
   - AI safety issues
   - Bias and fairness concerns
   - Privacy violations (GDPR, CCPA)
   - Security vulnerabilities
   - Ethical considerations

2. **Check compliance** with:
   - NIST AI RMF guidelines
   - Industry standards (ISO, IEEE)
   - Internal governance policies

3. **Provide feedback**:
   - List issues found with severity levels
   - Suggest specific fixes
   - Reference relevant standards

## Output Format

```
# Governance Review Report

## Summary
[Brief overview of findings]

## Issues Found

### Critical
- [Issue 1]: Description and location
  Fix: [Specific recommendation]

### High
- [Issue 2]: Description

### Medium
- [Issue 3]: Description

## Compliance Status
- GDPR: ✓ / ✗
- NIST RMF: ✓ / ✗
- ISO 42001: ✓ / ✗

## Recommendations
[Actionable recommendations]
```

## Examples

Example 1: Review a model training script
Example 2: Check API for privacy compliance
Example 3: Audit deployment configuration
````

### Configuration

Create `config.yaml`:

```yaml
skill:
  name: governance-reviewer
  version: 1.0.0
  author: Your Name

settings:
  # Skill-specific settings
  strictness: high
  standards:
    - NIST-AI-RMF
    - GDPR
    - ISO-42001

  # Model settings
  model: claude-sonnet-4-5
  max_tokens: 4000
  temperature: 0.3

triggers:
  - /governance-review
  - /check-compliance
  - /audit

examples:
  - path: examples/model-review.md
  - path: examples/api-compliance.md
```

### Documentation

Create comprehensive `README.md`:

````markdown
# Governance Reviewer Skill

## Overview
Automated AI governance code review skill for Claude Code.

## Features
- Checks for AI safety issues
- Validates GDPR compliance
- Identifies bias and fairness concerns
- Reviews security practices

## Installation

```bash
# Using Claude Code
claude skill install governance-reviewer

# Or manually
cp -r governance-reviewer ~/.claude/skills/
```

## Usage

### Basic Review
```
/governance-review
```

### Focused Review
```
/governance-review --focus=privacy
/governance-review --standard=NIST-AI-RMF
```

## Examples

### Example 1: Review Model Training
```python
# This code will be reviewed
import pandas as pd
from sklearn.model_selection import train_test_split

# Load data without bias check
data = pd.read_csv('users.csv')
X = data.drop('target', axis=1)
y = data['target']

# No fairness validation
X_train, X_test, y_train, y_test = train_test_split(X, y)
```

Skill output:
```
# Governance Review Report

## Issues Found

### High
- **Missing Bias Check**: No demographic parity analysis
  Location: Line 6-11
  Fix: Add fairness metrics before training

### Medium
- **No Data Validation**: Missing input validation
  Location: Line 6
  Fix: Validate data schema and quality
```

## Configuration

See [config.yaml](config.yaml) for customization options.

## Testing

```bash
# Run skill tests
pytest tests/

# Test manually
claude skill test governance-reviewer
```

## Contributing

See [CONTRIBUTING.md](../../CONTRIBUTING.md)

## License

MIT License - See [LICENSE](../../LICENSE)
````

### Testing

Create `tests/test_skill.md` with test cases:

````markdown
# Governance Reviewer Skill Tests

## Test 1: Detect Missing Fairness Check

**Input:**
```python
model.fit(X_train, y_train)
```

**Expected Output:**
- Should flag missing fairness validation
- Severity: High
- Should recommend fairness metrics

## Test 2: Detect Privacy Violation

**Input:**
```python
df['email'] = users.email
df.to_csv('output.csv')
```

**Expected Output:**
- Should flag PII exposure
- Severity: Critical
- Should recommend encryption/anonymization

## Test 3: Pass Clean Code

**Input:**
```python
# Fairness validation
fairness_metrics = check_demographic_parity(model, X_test, sensitive_attrs)
assert fairness_metrics['gender'] > 0.8

# Privacy-preserving export
df_anon = anonymize(df, ['email', 'name'])
df_anon.to_csv('output.csv')
```

**Expected Output:**
- No critical or high issues
- Compliance: ✓
````

## Skill Development Best Practices

### Prompt Engineering

1. **Be Specific**: Clear instructions for what to check
2. **Provide Examples**: Show expected output format
3. **Include Context**: Reference standards and frameworks
4. **Structure Output**: Use consistent formatting
5. **Test Thoroughly**: Validate with various inputs

### Skill Design

1. **Single Responsibility**: Each skill should do one thing well
2. **Composable**: Skills should work with other skills
3. **Configurable**: Allow customization via config
4. **Observable**: Log actions and decisions
5. **Documented**: Clear documentation and examples

### Performance

1. **Optimize Prompts**: Keep prompts concise but complete
2. **Cache Results**: Avoid redundant checks
3. **Batch Operations**: Group related checks
4. **Set Timeouts**: Prevent hanging on large codebases

### Safety

1. **Validate Inputs**: Check code is safe to analyze
2. **Limit Scope**: Define clear boundaries
3. **Human Oversight**: Flag critical issues for human review
4. **Audit Trail**: Log all recommendations

## Skill Categories

### Compliance & Audit
- GDPR compliance checker
- NIST RMF validator
- ISO 42001 assessor

### Fairness & Ethics
- Bias detector
- Fairness metrics calculator
- Ethical impact assessor

### Security & Privacy
- Security vulnerability scanner
- Privacy leak detector
- Data governance validator

### Documentation
- Model card generator
- Audit trail creator
- Compliance report builder

### Monitoring
- Model drift detector
- Performance monitor
- Anomaly detector

## Resources

### Claude Code Documentation
- [Claude Code Skills Guide](https://docs.anthropic.com/claude/docs/skills)
- [Skill Development Tutorial](https://docs.anthropic.com/claude/docs/skill-tutorial)

### AI Governance Standards
- [NIST AI RMF](https://www.nist.gov/itl/ai-risk-management-framework)
- [ISO/IEC 42001](https://www.iso.org/standard/81230.html)
- [EU AI Act](https://artificialintelligenceact.eu/)

## Contributing

To contribute a skill:

1. Follow the skill structure above
2. Include comprehensive tests
3. Document configuration options
4. Provide usage examples
5. Submit PR with skill name and description

See [CONTRIBUTING.md](../../CONTRIBUTING.md) for details.

## License

All skills are licensed under MIT License. See [LICENSE](../../LICENSE).
