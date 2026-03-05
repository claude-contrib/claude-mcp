# filesystem

> Let Claude read and write files anywhere on your system — not just the current working directory.

## What it does

The `filesystem` service wires up the [`@modelcontextprotocol/server-filesystem`](https://github.com/modelcontextprotocol/servers/tree/main/src/filesystem) MCP server, giving Claude a full suite of file operation tools scoped to directories you explicitly allow.

Useful when Claude needs to:
- Read or modify files outside the project directory (configs, shared libraries, home directory dotfiles)
- Navigate and inspect large directory trees
- Move, rename, or reorganise files across paths

## Installation

```
/plugin install filesystem@claude-services
```

## Configuration

Set `CLAUDE_FILESYSTEM_ALLOWED_DIRS` to control which directories Claude can access. Multiple paths are space-separated:

```bash
# ~/.zshrc or ~/.bashrc
export CLAUDE_FILESYSTEM_ALLOWED_DIRS="$HOME/Projects $HOME/Documents"
```

**Default:** `$HOME` if the variable is not set.

## Tools provided

| Tool | What it does |
|------|-------------|
| `read_file` | Read a file's full contents |
| `read_multiple_files` | Read several files in one call |
| `write_file` | Create or overwrite a file |
| `edit_file` | Apply line-based edits to a file |
| `create_directory` | Create a directory (and parents) |
| `list_directory` | List directory contents |
| `directory_tree` | Recursive tree view of a directory |
| `move_file` | Move or rename a file |
| `search_files` | Search for files by name pattern |
| `get_file_info` | Get file metadata (size, modified, permissions) |
| `list_allowed_directories` | Show which directories are accessible |

## License

MIT
