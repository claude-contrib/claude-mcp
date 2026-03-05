# Changelog

## [2.0.1](https://github.com/claude-contrib/claude-services/compare/v2.0.0...v2.0.1) (2026-03-05)


### Bug Fixes

* **ci:** remove develop branch trigger and drop redundant jq install step ([c4ed5a2](https://github.com/claude-contrib/claude-services/commit/c4ed5a21c0face2b7d4016e688065dc46894afbe))
* **ci:** use check-jsonschema as CLI via pip instead of missing GitHub Action ([7acbba9](https://github.com/claude-contrib/claude-services/commit/7acbba9fcc702a50f756bd25c82ae20aec8d87a1))
* **docs:** update playwright install command after -mcp suffix removal ([bc627be](https://github.com/claude-contrib/claude-services/commit/bc627befc538846090e4d6021dfe05a5abe7366b))
* resolve tech debt and schema gaps across the repo ([86755d7](https://github.com/claude-contrib/claude-services/commit/86755d7afdff34c86465cd875a62b7c614f09117))
* **thinking:** add reasoning keyword to plugin metadata ([bf5d1c5](https://github.com/claude-contrib/claude-services/commit/bf5d1c5b96815624d8ac77658417c515be9b4cc2))
* **thinking:** rename MCP server key from sequential-thinking to thinking ([0b1bd84](https://github.com/claude-contrib/claude-services/commit/0b1bd84253773341ae2d955ca2e735103a911629))

## [2.0.0](https://github.com/claude-contrib/claude-services/compare/v1.1.0...v2.0.0) (2026-03-04)


### ⚠ BREAKING CHANGES

* /plugin install playwright@claude-services

### Bug Fixes

* pin MCP package versions + dependabot ([c3b1f42](https://github.com/claude-contrib/claude-services/commit/c3b1f4294d7d10aa83eb492e995fe695bb9d9be0))


### Code Refactoring

* drop -mcp suffix from plugin names ([ce3a8f6](https://github.com/claude-contrib/claude-services/commit/ce3a8f6e5f37288ae5021281d25d5012bb96824d))
