# Neovim Dotfiles Documentation

This file documents the structure and behavior of the Neovim config in this directory.

## Entry Point

- `init.lua` sets the final indentation defaults to 2 spaces.
- `init.lua` sets `textwidth=110` and `formatoptions=tcqrn`.
- `init.lua` loads `lua/config/lazy.lua`.
- `lua/config/lazy.lua` loads the core config first, bootstraps `lazy.nvim`, then loads every plugin spec from `lua/plugins`.

Startup order:

1. `init.lua`
2. `lua/config/lazy.lua`
3. `lua/core/options.lua`
4. `lua/core/keymaps.lua`
5. `lazy.nvim` plugin setup

## Directory Layout

```text
.
├── init.lua
├── README.md
├── KEYMAPS.md
├── CONFIG.md
├── lazy-lock.json
└── lua
    ├── config
    │   └── lazy.lua
    ├── core
    │   ├── keymaps.lua
    │   └── options.lua
    └── plugins
        ├── alpha-dashboard.lua
        ├── autopair.lua
        ├── bufferline.lua
        ├── colortheme.lua
        ├── comment.lua
        ├── dap.lua
        ├── formatter.lua
        ├── git-stuff.lua
        ├── indent-blankline.lua
        ├── lspconfig.lua
        ├── lualine.lua
        ├── markdown.lua
        ├── markdownnvim.lua
        ├── neo-tree.lua
        ├── noice.lua
        ├── roslyn.lua
        ├── telescope.lua
        └── treesitter.lua
```

## Core Editor Behavior

Defined mostly in `lua/core/options.lua`:

- Line numbers: absolute + relative
- Mouse support: enabled
- Clipboard: uses `unnamedplus`
- Search: `ignorecase` with `smartcase`
- Wrapping: enabled with `linebreak`
- Indentation: spaces instead of tabs
- Tabline: always visible
- Smart/auto indentation: enabled globally

### Important indentation note

`lua/core/options.lua` first sets tab width to 4 spaces, but both `lua/core/options.lua` and `init.lua` later override that to 2 spaces with:

- `expandtab`
- `tabstop=2`
- `softtabstop=2`
- `shiftwidth=2`

In practice, the active default indentation is 2 spaces.

### Filetype-specific behavior

- C# (`cs`) disables `indentexpr`
- C# also disables `smartindent`

This is likely meant to avoid aggressive or broken indentation from the default expression.

## Keymaps

Leader key: `<Space>`

The detailed keymap reference already lives in `KEYMAPS.md`. The most important groups are:

- Buffer navigation and buffer closing
- Window splits and split navigation
- Telescope file search and grep
- Neo-tree toggle
- Formatting
- Git hunk preview
- LSP navigation, rename, actions, and diagnostics
- DAP breakpoint/continue shortcuts

There is also an insert-mode escape shortcut:

- `jj` -> leave insert mode

## Plugin Overview

### UI and Navigation

- `alpha-nvim`: startup dashboard with custom Snoopy ASCII header
- `bufferline.nvim`: buffer tab line with `vim-bbye` integration
- `lualine.nvim`: statusline
- `neo-tree.nvim`: file explorer on the left
- `noice.nvim`: improved command line, messages, and popup/split presentation
- `catppuccin`: colorscheme, loaded eagerly on startup

### Search and Discovery

- `telescope.nvim`: file finder and live grep
- `telescope-fzf-native.nvim`: native sorter for Telescope

### Editing Experience

- `nvim-treesitter`: syntax highlighting/parsing for the configured languages
- `nvim-autopairs`: auto-close brackets, quotes, etc.
- `Comment.nvim`: comment toggling with Treesitter-aware comment strings
- `indent-blankline.nvim`: indentation guides
- `render-markdown.nvim`: improved Markdown rendering inside Neovim
- `markdown-preview.nvim`: browser preview for Markdown files

### Git

- `vim-fugitive`: Git commands
- `gitsigns.nvim`: inline Git hunks and hunk preview

### Formatting and Language Tooling

- `conform.nvim`: formatter orchestration and format-on-save
- `mason.nvim`: LSP/DAP/tool installer
- `mason-lspconfig.nvim`: Mason to `lspconfig` bridge
- `nvim-lspconfig`: LSP setup
- `nvim-cmp`: completion engine
- `LuaSnip`: snippet engine
- `cmp-nvim-lsp`, `cmp_luasnip`, `friendly-snippets`: completion/snippet integrations
- `roslyn.nvim`: C# Roslyn support

### Debugging

- `nvim-dap`: core debugging support
- `nvim-dap-ui`: debugging UI
- `nvim-dap-virtual-text`: inline variable values
- `nvim-dap-vscode-js`: JS/TS adapter support
- `nvim-dap-go`: Go debugging support

## Language Support

### Treesitter parsers

Configured parsers:

- Go
- TypeScript
- JavaScript
- TSX
- Python
- Dockerfile
- Vim
- JSON
- Gitignore
- Markdown
- Markdown Inline
- HTML
- CSS
- Lua

### LSP servers ensured through Mason

- `vtsls`
- `gopls`
- `pyright`
- `dockerls`
- `docker_compose_language_service`
- `html`
- `cssls`
- `tailwindcss`
- `lua_ls`
- `prismals`
- `jsonls`
- `markdown_oxide`

### Custom LSP configuration

- Global diagnostics update while typing (`update_in_insert = true`)
- `gopls` has extra analysis and staticcheck enabled
- `roslyn.nvim` adds a dedicated C# configuration with inlay hints and code lens options

## Formatting

Configured through `lua/plugins/formatter.lua` using `conform.nvim`.

Formatters by filetype:

- JavaScript / TypeScript / React variants: `prettier`
- JSON / Markdown / HTML / CSS: `prettier`
- Lua: `stylua`
- Python: `isort`, then `black`
- Go: `gofumpt`
- C#: `csharpier`

Formatting behavior:

- Runs on save
- Falls back to LSP formatting if needed
- Timeout is 3000 ms
- Manual formatting is available with `<leader>mp`

## Debugging Setup

Defined in `lua/plugins/dap.lua`.

### JavaScript and TypeScript

- Uses `nvim-dap-vscode-js`
- Expects `vscode-js-debug` at `C:/Users/Samuel/vscode-js-debug`
- Supports launch and attach flows for:
  - `typescript`
  - `javascript`
  - `typescriptreact`
  - `javascriptreact`

### Go

- Uses `nvim-dap-go`
- Requires `dlv` installed on the system

### DAP UI behavior

- Opens the DAP UI automatically when a debug session initializes
- Shows scopes, breakpoints, stacks, watches, REPL, and console

## External Dependencies

From the current config and `README.md`, these tools are expected on the machine:

- `git`
- `ripgrep`
- `fd` or `fdfind`
- `xclip` on Linux for clipboard support
- `make` for `telescope-fzf-native.nvim`
- `node`, `npm`, and `npx`
- `tsx`
- `typescript`
- `go` and `dlv` for Go debugging
- language servers and formatters installed through Mason or system package managers

## Existing Documentation

- `README.md`: setup notes, mostly around Mason path setup, DAP setup, and Linux prerequisites
- `KEYMAPS.md`: shortcut reference
- `lazy-lock.json`: pinned plugin versions managed by `lazy.nvim`

## Maintenance Notes

- Plugin specs are split one-per-file under `lua/plugins`, which makes the config easy to extend.
- `README.md` is currently focused on installation notes, not architecture.
- There is some duplicated indentation setup between `init.lua` and `lua/core/options.lua`.
- The DAP path for `vscode-js-debug` is Windows-specific and may need adjustment on Linux.
- `markdown-preview.nvim` uses a build step that depends on `npx`.

## Suggested Next Cleanup

If you want this config easier to maintain over time, the highest-value cleanup items are:

1. Remove duplicated indentation settings and keep them in one place.
2. Split OS-specific setup notes in `README.md` into separate sections or files.
3. Make the DAP debugger path platform-aware instead of hardcoding a Windows path.
4. Keep `KEYMAPS.md` updated whenever mappings change.
