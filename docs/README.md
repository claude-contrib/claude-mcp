# Contributor Guide — Claude Services

Everything you need to package and publish an MCP server as a service plugin.

## What is a Service?

A service is a Claude Code plugin that wraps an [MCP (Model Context Protocol)](https://modelcontextprotocol.io) server. Once installed, Claude Code launches the server as an external process and Claude can use its tools autonomously — no invocation needed from the user.

## Plugin Structure

```
plugins/<your-service>/
├── .claude-plugin/
│   └── plugin.json    # required — plugin manifest
├── .mcp.json          # required — MCP server configuration
└── README.md          # required — usage docs, tools provided
```

## `plugin.json` — Plugin Manifest

```json
{
  "name": "your-service",
  "version": "1.0.0",
  "description": "What this service provides",
  "author": {
    "name": "your-name",
    "email": "you@example.com",
    "url": "https://github.com/your-name"
  },
  "homepage": "https://github.com/claude-contrib/claude-services",
  "repository": "https://github.com/claude-contrib/claude-services",
  "license": "MIT",
  "keywords": ["mcp", "relevant", "tags"]
}
```

## `.mcp.json` — MCP Server Configuration

The top-level key becomes the server's identifier in Claude Code.

**Simple server (npx):**

```json
{
  "your-server": {
    "command": "npx",
    "args": ["-y", "your-mcp-package@1.2.3"]
  }
}
```

**Server with arguments:**

```json
{
  "your-server": {
    "command": "npx",
    "args": ["-y", "your-mcp-package@1.2.3", "--flag", "value"]
  }
}
```

**Server needing shell expansion** (e.g. environment variables in args):

```json
{
  "your-server": {
    "command": "sh",
    "args": ["-c", "npx -y your-mcp-package@1.2.3 ${MY_CONFIG_VAR:-/default/path}"]
  }
}
```

**With environment variables:**

```json
{
  "your-server": {
    "command": "npx",
    "args": ["-y", "your-mcp-package@1.2.3"],
    "env": {
      "API_KEY": "${MY_API_KEY}"
    }
  }
}
```

> **Pin the version.** Always specify an exact version (e.g. `@1.2.3`) rather than `@latest`. This ensures reproducible installs and prevents silent breakage on upstream releases.

## Registering in `marketplace.json`

```json
{
  "name": "your-service",
  "description": "One-line description of what it provides",
  "version": "1.0.0",
  "author": { "name": "your-name" },
  "source": "./plugins/your-service",
  "category": "mcp-servers",
  "tags": ["mcp", "relevant", "tags"],
  "keywords": ["mcp", "relevant", "keywords"]
}
```

## Testing Locally

```bash
# 1. Clone the repo and navigate to it
cd claude-services

# 2. Open Claude Code
claude

# 3. Add the local marketplace
/plugin marketplace add .

# 4. Install your service
/plugin install your-service@claude-services
```

Claude Code will launch the MCP server immediately. Ask Claude to use one of its tools to verify it's working.

To iterate:

```
/plugin uninstall your-service@claude-services
/plugin install your-service@claude-services
```

## CI Validation

Every pull request runs `.github/workflows/validate.yml` which checks:

- `marketplace.json` is valid JSON with required fields (`name`, `owner`, `plugins`)
- Each plugin entry has `name` and `source`
- Each plugin directory exists
- `plugin.json` is valid JSON with a `name` field
- No duplicate plugin names

Run the same checks locally with `jq`:

```bash
jq empty .claude-plugin/marketplace.json
jq empty plugins/your-service/.claude-plugin/plugin.json
jq empty plugins/your-service/.mcp.json
```

## Official References

- [Plugins overview](https://code.claude.com/docs/en/plugins) — Plugin system, component types, installation
- [Plugin marketplaces](https://code.claude.com/docs/en/plugin-marketplaces) — Marketplace creation and team distribution
- [Plugins reference](https://code.claude.com/docs/en/plugins-reference) — Full schema specifications
- [MCP documentation](https://modelcontextprotocol.io/docs) — Protocol specification and server development
- [MCP servers](https://github.com/modelcontextprotocol/servers) — Official MCP server implementations
