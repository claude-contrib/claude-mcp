# thinking

> Give Claude a scratchpad for structured reasoning — think step by step before acting.

## What it does

The `thinking` service wires up the [`@modelcontextprotocol/server-sequential-thinking`](https://github.com/modelcontextprotocol/servers/tree/main/src/sequentialthinking) MCP server, giving Claude a `sequentialthinking` tool it can use to decompose problems before committing to an approach.

Instead of jumping straight to an answer, Claude can:
- Break a complex task into discrete reasoning steps
- Revise earlier steps as new information emerges
- Explore alternative approaches before settling on one
- Produce a clearly auditable chain of thought

Best suited for: architectural decisions, multi-step debugging, planning tasks with many interdependencies.

## Installation

```
/plugin install thinking@claude-services
```

## Tools provided

| Tool | What it does |
|------|-------------|
| `sequentialthinking` | Step-by-step reasoning with support for revision and branching |

## License

MIT
