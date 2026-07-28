# Cities Manuscript Engine v3

A Claude Code skill for urban studies research — from idea to Q1 manuscript. Constitution-driven spiral architecture. Zotero-powered competitive intelligence.

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Version](https://img.shields.io/badge/version-3.0.0-blue.svg)](https://github.com/ouzichao0823-oss/cities-skill/releases)

---

## What's New in v3

| Feature | Description |
|---------|-------------|
| **Hard Gates** | 4 mandatory checkpoints (constitution read, citation verify, thesis alignment, CN-EN sync) — cannot be skipped |
| **Trigger Keywords** | Explicit Chinese + English triggers with intent-to-entry mapping |
| **Cities Phrasebook** | 40+ sentence templates extracted from 97 real Cities papers (2020-2026) |
| **Pre-Writing Checklists** | Every section brief now requires a mandatory pre-check before output |
| **Paragraph Skeletons** | Fill-in-the-blank argument structures for lit review paragraphs |
| **Research Question Design** | Peters (2025) *Nature Human Behaviour* 4-phase framework distilled |

---

## Versions

| Version | Directory | Description |
|---------|-----------|-------------|
| **v3.0** | [`v2.0/`](v2.0/) | Hard gates, phrasebook, pre-writing checkpoints, RQ design framework. **(Current)** |
| **v2.0** | [`v2.0/`](v2.0/) | Spiral-loop architecture with constitution-driven research engine. |
| **v1.0** | [`v1.0/`](v1.0/) | Original linear pipeline. |

---

## Quick Start

```bash
# Install
cp -r cities-knowledge-graph ~/.claude/skills/

# Connect your Zotero library (optional but recommended)
# See SETUP.md for detailed instructions

# Start a conversation
"我想研究城市通勤与活动空间的关系"
"I want to study urban mobility and time use"
```

---

## Architecture

```
constitution.md  ←  every conversation starts and ends here (GATE-1: mandatory read)
       │
       ├── Entry A: Vague interest → RQ generation (Peters 4-phase framework)
       ├── Entry B: Have data → capability matching
       ├── Entry C: Have literature → competitive positioning (Zotero corpus)
       ├── Entry D: Have results → reverse inference
       ├── Entry E: Write section → strategic brief (with pre-check) → execute
       └── Entry F: Full audit → consistency check

Hard Gates (cannot be skipped):
  GATE-1: Read constitution.md at conversation start
  GATE-2: Verify every citation against Zotero before use
  GATE-3: Check paragraph alignment with core thesis before output
  GATE-4: Synchronize Chinese-English before bilingual output
```

---

## What's Inside

### 7 Urban Themes
`inequality` `mobility` `environment-sustainability` `urban-resilience` `housing` `health` + customizable template

Each theme includes: sub-topics, core RQ templates, methodology notes, narrative logic, **writing patterns extracted from real papers**.

### Cities Journal Guide
Full chapter-by-chapter guide extracted from **97 Cities papers** (2020-2026):
- Introduction: 6 opening strategies, 5-paragraph template, gap phrase library
- Literature Review: citation density rules, must-exclude checklist, argument skeleton
- Methods: data source table template, method-question matching pattern
- Results: H3 naming rules, cognitive progression structure
- Discussion: 5-paragraph structure, literature dialogue patterns, policy implication rules
- **Phrasebook**: 40+ fill-in-the-blank sentence templates with real examples

### Six Entry Points
Each entry has a dedicated instruction file with step-by-step workflow.

### Progressive Loading
~200 lines base → up to ~850 with full context. Only loads what's needed.

---

## Requirements

- Claude Code (any model; optimized for DeepSeek with mechanical checks)
- Zotero (optional — enables competitive analysis against your local paper library)
- ~852 Q1 urban studies papers in the maintainer's Zotero library serve as the pattern extraction corpus

---

## Installation Methods

1. **Manual**: Copy to `~/.claude/skills/cities-knowledge-graph/`
2. **Plugin** (coming soon): `/plugin marketplace add ouzichao0823-oss/cities-skill`
3. **Claude.ai Project**: Import from GitHub URL

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

Built with 97 Cities papers, 852+ Q1 urban studies papers, and countless rounds of real manuscript writing.
