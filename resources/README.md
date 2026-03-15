# AI Governance Resources

Curated knowledge base of books, research papers, standards, regulations, and best practices for AI governance.

## Overview

This directory serves as a comprehensive knowledge repository for AI governance. Resources are organized by type and topic for easy discovery and reference.

## Directory Structure

```
resources/
├── books/              # Books and long-form content
│   ├── pdfs/          # PDF files (Git LFS)
│   └── notes/         # Book summaries and highlights
├── papers/            # Research papers
│   ├── by-topic/      # Organized by governance topic
│   └── reading-list.md
├── blogs/             # Blog posts and articles
│   ├── curated/       # Saved articles (markdown)
│   └── links.md       # External links
├── standards/         # Governance frameworks and standards
│   ├── nist/          # NIST AI RMF
│   ├── iso/           # ISO standards
│   └── eu-ai-act/     # EU AI Act materials
└── knowledge-base/    # Internal knowledge management
    ├── concepts/      # Core concept explanations
    ├── templates/     # Document templates
    └── glossary.md    # AI governance terminology
```

## Quick Navigation

### By Resource Type
- [📚 Books](#books)
- [📄 Research Papers](#research-papers)
- [📝 Blog Posts & Articles](#blog-posts--articles)
- [⚖️ Standards & Regulations](#standards--regulations)
- [📖 Knowledge Base](#knowledge-base)

### By Topic
- AI Safety
- AI Ethics
- Compliance & Regulation
- Fairness & Bias
- Transparency & Explainability
- Privacy & Security
- Risk Management

## Books

### Adding Books

1. **Add PDF** (if available):
   ```bash
   # Ensure Git LFS is installed
   git lfs install

   # Add PDF to books/pdfs/
   cp your-book.pdf resources/books/pdfs/
   git add resources/books/pdfs/your-book.pdf
   ```

2. **Create notes/summary**:
   ```bash
   # Create markdown notes
   touch resources/books/notes/your-book.md
   ```

3. **Note template**:
   ```markdown
   # Book Title

   **Author**: Author Name
   **Published**: Year
   **ISBN**: ISBN-13
   **Status**: Reading/Completed

   ## Summary
   Brief overview of the book's main thesis

   ## Key Takeaways
   - Important point 1
   - Important point 2

   ## Chapter Notes
   ### Chapter 1: Title
   Notes and highlights

   ## Related Resources
   - Links to related papers, books, etc.
   ```

### Recommended Books

*Add book recommendations here as they are curated*

## Research Papers

### Organization

Papers are organized by topic in `papers/by-topic/`:
- `fairness-bias/` - Fairness and bias in AI
- `explainability/` - Interpretability and explainability
- `safety/` - AI safety research
- `privacy/` - Privacy-preserving ML
- `regulation/` - Regulatory compliance
- `ethics/` - Ethical AI frameworks

### Adding Papers

1. **Add to appropriate topic folder**:
   ```bash
   mkdir -p resources/papers/by-topic/fairness-bias
   cp paper.pdf resources/papers/by-topic/fairness-bias/
   ```

2. **Update reading list**:
   Add entry to `papers/reading-list.md`:
   ```markdown
   ### Fairness Through Awareness
   - **Authors**: Dwork et al.
   - **Year**: 2012
   - **Venue**: ITCS
   - **Summary**: Introduces individual fairness framework
   - **Key Contributions**: Metric fairness definition
   - **File**: [fairness-bias/dwork-2012-fairness.pdf](by-topic/fairness-bias/dwork-2012-fairness.pdf)
   ```

### Essential Papers

*Add curated paper list here*

## Blog Posts & Articles

### Saving Articles

#### As Markdown (Preferred)
```bash
# Convert article to markdown and save
curl -X GET "article-url" | pandoc -f html -t markdown > \
  resources/blogs/curated/article-title.md
```

#### As Links
Add to `blogs/links.md`:
```markdown
## Fairness & Bias

### [Title of Article](https://url)
**Author**: Author Name | **Date**: 2024-01-01

Brief description of the article and why it's relevant.
```

### Blog Categories

- AI Governance Best Practices
- Industry Case Studies
- Regulatory Updates
- Tool Reviews
- Event Summaries

## Standards & Regulations

### NIST AI Risk Management Framework

Location: `standards/nist/`

Key documents:
- AI RMF 1.0
- Playbook
- Implementation guides
- Use cases

Resources:
- [NIST AI RMF Website](https://www.nist.gov/itl/ai-risk-management-framework)

### ISO Standards

Location: `standards/iso/`

Relevant standards:
- ISO/IEC 42001 - AI Management System
- ISO/IEC 23894 - Risk Management
- ISO/IEC 22989 - AI Concepts and Terminology

### EU AI Act

Location: `standards/eu-ai-act/`

Materials:
- Full regulation text
- Implementation guides
- Risk classification guidelines
- Conformity assessment procedures

Resources:
- [EU AI Act Official Site](https://artificialintelligenceact.eu/)

### Other Frameworks

- **OECD AI Principles**: `standards/oecd/`
- **IEEE Ethics Standards**: `standards/ieee/`
- **Partnership on AI**: `standards/partnership-ai/`

## Knowledge Base

### Concepts

Location: `knowledge-base/concepts/`

Core AI governance concepts explained:
- Algorithmic fairness
- Differential privacy
- Explainable AI
- Model cards
- Data sheets
- Red teaming
- Adversarial robustness

Example concept file:
```markdown
# Algorithmic Fairness

## Definition
Algorithmic fairness refers to...

## Key Metrics
- Statistical Parity
- Equalized Odds
- Predictive Parity

## Implementation
Code examples and tools

## Further Reading
Links to papers and resources
```

### Templates

Location: `knowledge-base/templates/`

Document templates for:
- Model cards
- Data sheets
- Risk assessments
- Compliance reports
- Audit trails
- Impact assessments

### Glossary

Location: `knowledge-base/glossary.md`

Comprehensive terminology guide for AI governance.

Format:
```markdown
## A

**Adversarial Example**: An input designed to cause a model to make a mistake.

**AI System**: A machine-based system that...

## B

**Bias**: Systematic and unfair discrimination...
```

## Curation Guidelines

### Quality Standards

Resources should be:
- **Relevant**: Directly related to AI governance
- **Credible**: From reputable sources
- **Current**: Up-to-date (note publication date)
- **Actionable**: Provide practical value

### Attribution

Always include:
- Author(s)
- Publication date
- Source/venue
- License information (if applicable)

### Organization

- Use clear, descriptive filenames
- Add README files to new subdirectories
- Update index files when adding resources
- Tag resources with topics/keywords

## Contributing Resources

### Before Adding

1. **Check for duplicates**: Search existing resources
2. **Verify quality**: Ensure resource meets standards
3. **Determine placement**: Choose appropriate directory
4. **Prepare metadata**: Collect author, date, summary

### Adding Process

1. Add file to appropriate location
2. Update relevant index/README
3. Add entry to reading lists if applicable
4. Commit with descriptive message

Example commit:
```
Add fairness paper: Dwork et al. 2012

- Adds seminal paper on individual fairness
- Includes summary in reading list
- Categorized under fairness-bias topic
```

## Search & Discovery

### Finding Resources

```bash
# Search by keyword
grep -r "differential privacy" resources/

# Find papers by author
find resources/papers -name "*dwork*"

# Search glossary
grep -i "fairness" resources/knowledge-base/glossary.md
```

### Indexing

Consider using tools for better searchability:
- Elasticsearch for full-text search
- Obsidian for knowledge graph
- Notion for collaborative curation

## Git LFS Configuration

Large PDFs use Git LFS:

```bash
# Track PDF files
git lfs track "resources/books/pdfs/**/*.pdf"
git lfs track "resources/papers/**/*.pdf"

# Check LFS status
git lfs ls-files
```

## External Links

### Websites & Portals
- [AI Index](https://aiindex.stanford.edu/)
- [Papers with Code - Ethics](https://paperswithcode.com/task/ethics)
- [OECD.AI](https://oecd.ai/)

### Newsletters
- AI Ethics Brief
- Import AI
- The Batch (deeplearning.ai)

### Communities
- AI Alignment Forum
- Partnership on AI
- AI Ethics Community

## Contributing

See [CONTRIBUTING.md](../CONTRIBUTING.md) for:
- Resource curation guidelines
- Quality standards
- Attribution requirements
- Organization conventions

## License

Resources retain their original licenses. This repository's organizational structure and annotations are under MIT License. See [LICENSE](../LICENSE) for details.
