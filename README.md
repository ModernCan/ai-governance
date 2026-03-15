# AI Governance

A comprehensive repository for AI governance tools, applications, agents, and resources.

## Overview

This repository serves as a central hub for developing, curating, and managing AI governance materials including:
- Custom governance tools and utilities
- Production applications for AI lifecycle management
- Agentic AI systems for automated governance
- Curated knowledge base of standards, research, and best practices
- Integration with third-party governance frameworks

## Repository Structure

```
ai-governance/
├── tools/          # Custom AI governance tools (original development)
├── apps/           # Production applications for AI governance
├── agents/         # Agentic AI systems (Claude skills, plugins, workflows)
├── resources/      # Knowledge base (books, papers, standards, guides)
├── external/       # Forked and third-party tools
├── examples/       # Demonstrations and tutorials
├── docs/           # Comprehensive documentation
├── tests/          # Test suites
├── scripts/        # Automation and utility scripts
└── config/         # Configuration files
```

### 📁 Key Directories

#### `/tools/` - Custom AI Governance Tools
Original development of standalone utilities and libraries for AI governance tasks.
- Model auditing and compliance checking
- Bias detection and fairness analysis
- Data lineage tracking
- Risk assessment frameworks

[View tools catalog →](tools/README.md)

#### `/apps/` - Production Applications
Full-featured applications with deployment configurations for governing AI lifecycles.
- Governance dashboards
- Lifecycle management platforms
- Compliance reporting systems

[View apps catalog →](apps/README.md)

#### `/agents/` - Agentic AI Governance
Agent-based systems for automated governance processes.
- Claude Code skill agents
- LangChain/AutoGen plugins
- Multi-agent workflows

[View agent architecture →](agents/README.md)

#### `/resources/` - Knowledge Base
Curated learning materials and reference content.
- Books and research papers
- Regulatory standards (NIST, ISO, EU AI Act)
- Best practices and guides
- Internal knowledge base

[View resource index →](resources/README.md)

#### `/external/` - Third-Party Tools
Forked repositories and integrations with external tools.
- Git submodules for forks
- Custom patches and modifications
- Third-party integrations

[View fork management →](external/README.md)

#### `/examples/` - Examples & Tutorials
Working demonstrations and step-by-step tutorials.

[View examples →](examples/README.md)

## Quick Start

### Prerequisites
- Python 3.9 or higher
- Git with LFS support (for large resources)

### Installation

```bash
# Clone the repository
git clone https://github.com/yourusername/ai-governance.git
cd ai-governance

# Install development dependencies
pip install -e ".[dev]"

# Run tests
make test
```

### Development Setup

```bash
# Install all development tools
make setup

# Run linting
make lint

# Run all tests
make test
```

## Documentation

Comprehensive documentation is available in the [`/docs`](docs/README.md) directory:
- [Getting Started Guide](docs/getting-started/) - Onboarding and setup
- [Architecture Decisions](docs/architecture/) - Design rationale and ADRs
- [How-to Guides](docs/guides/) - Task-oriented tutorials
- [API Documentation](docs/api/) - Auto-generated API references

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on:
- Where to add different types of content
- Code standards and style guides
- Pull request process
- Directory structure conventions

## Project Philosophy

This repository is organized by **purpose** rather than technology:
- **Clear separation**: Tools vs apps vs resources vs external code
- **Extensibility**: Easy to add new components without restructuring
- **Discoverability**: Clear navigation for both humans and AI agents
- **Attribution**: External work clearly separated from original development

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Resources

- [NIST AI Risk Management Framework](https://www.nist.gov/itl/ai-risk-management-framework)
- [EU AI Act](https://artificialintelligenceact.eu/)
- [ISO/IEC 42001 AI Management System](https://www.iso.org/standard/81230.html)

---

**Status**: Active Development | **Last Updated**: 2026-03-15
