# playwright

> Give Claude a real browser — navigate, click, fill forms, screenshot, and scrape, all without leaving your session.

## What it does

The `playwright` service wires up the [`@playwright/mcp`](https://github.com/microsoft/playwright-mcp) server, giving Claude full browser automation capabilities via [Playwright](https://playwright.dev/).

Useful when Claude needs to:
- Verify that a UI change looks and behaves correctly
- Scrape data from websites or web apps
- Fill and submit forms programmatically
- Take screenshots for visual review
- Execute JavaScript in a live browser context
- Test multi-step user flows end to end

## Installation

```
/plugin install playwright@claude-services
```

No additional configuration required — the browser launches on demand.

## Tools provided

| Tool | What it does |
|------|-------------|
| `browser_navigate` | Navigate to a URL |
| `browser_snapshot` | Capture an accessibility snapshot of the current page |
| `browser_take_screenshot` | Take a screenshot |
| `browser_click` | Click an element |
| `browser_type` | Type text into an element |
| `browser_fill_form` | Fill multiple form fields at once |
| `browser_press_key` | Press a keyboard key |
| `browser_select_option` | Select a dropdown option |
| `browser_hover` | Hover over an element |
| `browser_drag` | Drag and drop between elements |
| `browser_evaluate` | Execute JavaScript on the page |
| `browser_tabs` | List, open, close, or switch browser tabs |
| `browser_close` | Close the browser |

## License

MIT
