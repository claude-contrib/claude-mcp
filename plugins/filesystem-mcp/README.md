# Filesystem MCP Plugin

Filesystem MCP server for file operations.

## MCP Server

This plugin provides the `@modelcontextprotocol/server-filesystem` MCP server.

## Installation

```bash
/plugin install filesystem-mcp
```

## Configuration

Set the `FILESYSTEM_ALLOWED_PATHS` environment variable to configure which directories the server can access.

```bash
# In your shell profile (.bashrc, .zshrc, etc.)
export FILESYSTEM_ALLOWED_PATHS="$HOME/Projects $HOME/Documents"
```

**Default:** `$HOME/Projects` if not set.

## Tools Provided

- `read_file` / `read_text_file` - Read file contents
- `read_media_file` - Read image/audio files
- `read_multiple_files` - Read multiple files at once
- `write_file` - Create or overwrite files
- `edit_file` - Make line-based edits to files
- `create_directory` - Create directories
- `list_directory` / `list_directory_with_sizes` - List directory contents
- `directory_tree` - Get recursive tree view
- `move_file` - Move or rename files
- `search_files` - Search for files by pattern
- `get_file_info` - Get file metadata
- `list_allowed_directories` - List accessible directories
