# Claude Services

A collection of service plugins for Claude Code.

## Installation

Add the marketplace to your Claude Code settings (`~/.claude/settings.json`):

```json
{
  "extraKnownMarketplaces": {
    "claude-mcp": {
      "source": {
        "source": "github",
        "repo": "claude-contrib/claude-services"
      }
    }
  }
}
```

Then install plugins:

```text
/plugin install <plugin-name>@claude-services
```

## Available Plugins

| Plugin                                               | Description                                         |
| ---------------------------------------------------- | --------------------------------------------------- |
| [`thinking-mcp`](plugins/thinking-mcp/README.md)     | Sequential thinking for structured problem analysis |
| [`filesystem-mcp`](plugins/filesystem-mcp/README.md) | File system operations                              |
| [`playwright-mcp`](plugins/playwright-mcp/README.md) | Browser automation                                  |

## License

MIT
