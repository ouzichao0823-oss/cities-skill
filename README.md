# Cities Manuscript Engine

A Claude Code skill for urban studies research paper production — from experimental design through literature review to manuscript writing.

## Versions

| Version | Directory | Description |
|---------|-----------|-------------|
| **v2.0** | [`v2.0/`](v2.0/) | Spiral-loop architecture with constitution-driven research engine. Six entry points, strategic briefs, 7 urban themes, Cities journal guide, Zotero corpus bridge. **(Current)** |
| **v1.0** | [`v1.0/`](v1.0/) | Original linear pipeline. Objects taxonomy, core knowledge base, thematic modules, writing guides. |

## Quick Start

1. Install as a Claude Code skill — copy to `~/.claude/skills/cities-knowledge-graph/`
2. Read [`v2.0/SETUP.md`](v2.0/SETUP.md) to connect your Zotero library
3. Start with: "I want to study [your topic]" — the skill routes you to the right entry point

## Architecture (v2.0)

```
constitution.md  ←  every conversation starts and ends here
       │
       ├── Entry A: Vague interest → RQ generation
       ├── Entry B: Have data → capability matching
       ├── Entry C: Have literature → competitive positioning
       ├── Entry D: Have results → reverse inference
       ├── Entry E: Write section → strategic brief → execute
       └── Entry F: Full audit → consistency check
```

## License

MIT
