# Cities Manuscript Engine

A Claude Code skill for urban planning research — an end-to-end system for Q1 manuscripts, built on a constitution-driven spiral architecture. Not a writing assistant: a research design engine that validates and corrects your research design at every step, from vague interest to publishable paper. Zotero-powered competitive intelligence.

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-3.0.0-blue.svg)](https://github.com/ouzichao0823-oss/cities-skill/releases)

---

## What's New in v3

| Feature | Description |
|---------|-------------|
| **Journal-specific writing guides** | Chapter-by-chapter guides (abstract → conclusion) extracted sentence-by-sentence from 150+ real Cities papers — every judgment backed by a real example you can verify |
| **Citation fidelity audit protocol** | Three-tier citation review: existence check → content-fidelity grading (EXACT / SUBSTANTIAL / PARTIAL / OVERSTATEMENT / MISMATCH / UNVERIFIABLE) → research-design quality assessment |
| **Research design pattern library** | 6 reusable quantitative urban design patterns, each with matched methods and pitfalls |
| **Strategic briefs** | Pre-writing briefs generated from the constitution — what to write, what to exclude, who to cite, and why |
| **7 theme modules** | Inequality, mobility, environment, resilience, housing, health + a customizable template |
| **Zotero competitive intelligence** | Query your local library (ZotSeek semantic search + LLM extraction) to position your paper against the closest 3–5 papers |

---

## Versions

| Version | Directory | Description |
|---------|-----------|-------------|
| **v3.0** | [`v3.0/`](v3.0/) | Journal-specific writing guides, citation audit protocol, design patterns. **(Current)** |
| **v2.0** | [`v2.0/`](v2.0/) | Spiral-loop architecture with constitution-driven research engine. Six entry points, strategic briefs, 7 themes, Cities journal guide. |
| **v1.0** | [`v1.0/`](v1.0/) | Original linear pipeline. Objects taxonomy, core knowledge base, writing guides. |

---

## Quick Start

```bash
# Install
cp -r cities-knowledge-graph ~/.claude/skills/

# Connect your Zotero library (optional but recommended)
# See SETUP.md for detailed instructions

# Start a conversation
"我想研究城市住房可负担性与人口流动的关系"
"I want to study park accessibility and health equity"
```

---

## Architecture

```
constitution.md  ←  every conversation starts and ends here (mandatory first read)
       │
       ├── Entry A: Vague interest → RQ generation
       ├── Entry B: Have data → capability matching
       ├── Entry C: Have literature → competitive positioning (Zotero corpus)
       ├── Entry D: Have results → reverse inference
       ├── Entry E: Write section → strategic brief → execute
       ├── Entry F: Full audit → consistency check
       └── Entry G: Reference mining / citation audit → fidelity grading

Core principles (cannot be skipped):
  PRINCIPLE-0: Check the Zotero library first for any literature/citation/fact task
  PRINCIPLE-1: Read constitution.md at conversation start
  PRINCIPLE-2: Verify every citation against Zotero before use
  PRINCIPLE-3: Generate a strategic brief before writing any section
  PRINCIPLE-4: Delegate to specialized skills (polish / figure / citation / search)
```

---

## What's Inside

### 7 Urban Themes
`inequality` `mobility` `environment-sustainability` `urban-resilience` `housing` `health` + customizable template

Each theme includes: sub-topics, core RQ templates, methodology notes, narrative logic, **writing patterns extracted from real papers**.

### Cities Journal Guide
Full chapter-by-chapter guide extracted from **150+ Cities papers**:
- Abstract: six-part structure, case-city anchoring, planning takeaway
- Introduction: opening strategies, gap phrasing, contribution skeleton
- Literature Review: citation density, must-exclude checklist, argument skeleton
- Data: mobile signaling / census / survey writing patterns, chain filtering
- Methods: indicator construction, clustering, model justification
- Study Area: three-reason site justification
- Results: cognitive progression, group-comparison reporting
- Discussion: literature dialogue patterns, policy implication rules
- Conclusion: contribution statement, boundary declarations

### Citation Fidelity Audit Protocol
Three-tier review so every citation is verifiable:
1. Existence check — is it really in your library?
2. Content-fidelity grading — does the paper actually support the claim?
3. Research-design quality assessment — validity / causality / construct

### Six Entry Points (+ reference mining)
Each entry has a dedicated instruction file with a step-by-step workflow.

### Progressive Loading
~170 lines base → up to ~900 with full context. Only loads what's needed.

---

## Requirements

- Claude Code (works with any model; optimized for a local LLM + API-model two-tier setup)
- Zotero (optional — enables competitive analysis against your local paper library)

---

## Installation Methods

1. **Manual**: Copy to `~/.claude/skills/cities-knowledge-graph/`
2. **Claude.ai Project**: Import from GitHub URL

---

## Design Philosophy

> This skill is the "brain" — it ensures correctness of research direction. Writing, polishing, figures, and citations are delegated to specialized skills (nature-polishing, nature-figure, nature-citation).

- **Constitution-first**: Every conversation reads and writes the research constitution
- **Mechanical over judgmental**: Self-checks use extraction + comparison, not subjective evaluation. Designed to work with cheaper models.
- **Zotero as truth**: Every citation must be verified against the local Zotero library. No fabricated references.
- **Chinese → International**: Dedicated CN-to-Intl translation patterns for Chinese urban research.

---

## License

MIT — free to use, modify, and distribute.
