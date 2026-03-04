# Claude Services

> Production-ready MCP servers for [Claude Code](https://claude.ai/code) — give Claude the tools to browse, read, write, and reason beyond its defaults.

[![Validate](https://github.com/claude-contrib/claude-services/actions/workflows/validate.yml/badge.svg)](https://github.com/claude-contrib/claude-services/actions/workflows/validate.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

MCP servers extend what Claude can *do* — not just what it knows. Install a service and Claude gains new capabilities it can use autonomously: controlling a real browser, reading and writing files, structuring its reasoning step by step.

## How Services Work

Each service is an [MCP (Model Context Protocol)](https://modelcontextprotocol.io) server that Claude Code connects to as an external process. Once installed, Claude picks up the new tools automatically — no extra prompting required.

## Quickstart

**1. Register the marketplace** in `~/.claude/settings.json`:

```json
{
  "extraKnownMarketplaces": {
    "claude-services": {
      "source": {
        "source": "github",
        "repo": "claude-contrib/claude-services"
      }
    }
  }
}
```

**2. Install a service** inside Claude Code:

```
/plugin install playwright-mcp@claude-services
```

Claude now has browser automation tools available in every session.

## Available Services

| Service | Description | Tools unlocked |
|---------|-------------|----------------|
| [`thinking`](plugins/thinking/README.md) | Sequential thinking for structured problem analysis | Break down complex problems step by step before acting |
| [`filesystem`](plugins/filesystem/README.md) | Filesystem access beyond the working directory | Read, write, and navigate files across your system |
| [`playwright`](plugins/playwright/README.md) | Full browser automation via Playwright | Navigate pages, click, fill forms, take screenshots |

## Publish Your Own Service

Have an MCP server your team relies on? Package it for one-command install:

```
plugins/your-service/
├── .claude-plugin/plugin.json   # name, version, description
├── .mcp.json                    # server command + args
└── README.md                   # what it unlocks + install instructions
```

1. **Fork** this repo and drop your plugin under `plugins/`
2. **Register** it in `.claude-plugin/marketplace.json`
3. **Open a PR** — CI validates structure automatically

→ [Read the full authoring guide](docs/README.md)

## The claude-contrib Ecosystem

| Marketplace | Install key | What it provides |
|-------------|------------|-----------------|
| [claude-extensions](https://github.com/claude-contrib/claude-extensions) | `@claude-extensions` | Hooks, context rules, session automation |
| **claude-services** ← you are here | `@claude-services` | MCP servers — browser, filesystem, sequential thinking |
| [claude-skills](https://github.com/claude-contrib/claude-skills) | `@claude-skills` | Slash commands — `/commit`, and more |

## License

MIT — use it, fork it, extend it.
