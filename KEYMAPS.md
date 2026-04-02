# Neovim Shortcut Cheat Sheet

Leader key: `Space`

## Global Configs

| Mode | Shortcut | Action | Source |
| --- | --- | --- | --- |
| Normal | `<C-s>` | Save current file | `lua/core/keymaps.lua` |
| Normal | `<Tab>` | Go to next buffer | `lua/core/keymaps.lua` |
| Normal | `<S-Tab>` | Go to previous buffer | `lua/core/keymaps.lua` |
| Normal | `<C-w>` | Close current buffer with `:Bdelete!` | `lua/core/keymaps.lua` |
| Normal | `<leader>b` | Create a new empty buffer | `lua/core/keymaps.lua` |
| Normal | `<leader>cf` | Copy current file name to clipboard | `lua/core/keymaps.lua` |
| Normal | `<leader>cp` | Copy current file path to clipboard | `lua/core/keymaps.lua` |
| Normal | `<leader>nd` | Dismiss Noice messages and close focused error popup/split | `lua/core/keymaps.lua` |

## Telescope

| Mode | Shortcut | Action | Source |
| --- | --- | --- | --- |
| Normal | `<C-f>` | Find files | `lua/plugins/telescope.lua` |
| Normal | `<leader>fg` | Live grep | `lua/plugins/telescope.lua` |
| Normal | `<leader>en` | Find files inside your Neovim config directory | `lua/plugins/telescope.lua` |

## Neo-tree

| Mode | Shortcut | Action | Source |
| --- | --- | --- | --- |
| Normal | `<C-n>` | Toggle Neo-tree filesystem view on the left | `lua/plugins/neo-tree.lua` |

## Formatter

| Mode | Shortcut | Action | Source |
| --- | --- | --- | --- |
| Normal, Visual | `<leader>mp` | Format file or selected range | `lua/plugins/formatter.lua` |

## Git

| Mode | Shortcut | Action | Source |
| --- | --- | --- | --- |
| Normal | `<leader>hp` | Preview git hunk | `lua/plugins/git-stuff.lua` |

## LSP

These mappings are buffer-local and only exist after an LSP server attaches.

| Mode | Shortcut | Action | Source |
| --- | --- | --- | --- |
| Normal | `K` | Hover documentation | `lua/plugins/lspconfig.lua` |
| Normal | `gd` | Go to definition | `lua/plugins/lspconfig.lua` |
| Normal | `gD` | Go to declaration | `lua/plugins/lspconfig.lua` |
| Normal | `gi` | Go to implementation | `lua/plugins/lspconfig.lua` |
| Normal | `go` | Go to type definition | `lua/plugins/lspconfig.lua` |
| Normal | `gr` | Show references | `lua/plugins/lspconfig.lua` |
| Normal | `gs` | Signature help | `lua/plugins/lspconfig.lua` |
| Normal | `<F2>` | Rename symbol | `lua/plugins/lspconfig.lua` |
| Normal, Visual | `<F3>` | Format buffer or selection via LSP | `lua/plugins/lspconfig.lua` |
| Normal | `<F4>` | Code actions | `lua/plugins/lspconfig.lua` |
| Normal | `<leader>se` | Open diagnostic float for symbol under cursor | `lua/plugins/lspconfig.lua` |

## Completion (`nvim-cmp`)

These mappings are active in the completion menu during Insert mode.

| Mode | Shortcut | Action | Source |
| --- | --- | --- | --- |
| Insert | `<C-b>` | Scroll docs up | `lua/plugins/lspconfig.lua` |
| Insert | `<C-f>` | Scroll docs down | `lua/plugins/lspconfig.lua` |
| Insert | `<C-Space>` | Trigger completion | `lua/plugins/lspconfig.lua` |
| Insert | `<C-e>` | Abort completion | `lua/plugins/lspconfig.lua` |
| Insert | `<CR>` | Confirm selected completion item | `lua/plugins/lspconfig.lua` |

## DAP

| Mode | Shortcut | Action | Source |
| --- | --- | --- | --- |
| Normal | `<leader>dt` | Toggle breakpoint | `lua/plugins/dap.lua` |
| Normal | `<leader>dc` | Continue debugging | `lua/plugins/dap.lua` |

## Alpha Dashboard

These shortcuts are available on the dashboard screen.

| Context | Shortcut | Action | Source |
| --- | --- | --- | --- |
| Dashboard | `e` | New file | `lua/plugins/alpha-dashboard.lua` |
| Dashboard | `f` | Find file | `lua/plugins/alpha-dashboard.lua` |
| Dashboard | `r` | Open recent files | `lua/plugins/alpha-dashboard.lua` |
| Dashboard | `w` | Find word | `lua/plugins/alpha-dashboard.lua` |
| Dashboard | `q` | Quit Neovim | `lua/plugins/alpha-dashboard.lua` |

## Treesitter

No explicit keymaps configured in `lua/plugins/treesitter.lua`.

## Bufferline

No active keymaps configured. There are commented-out examples in `lua/plugins/bufferline.lua`.

## Comment.nvim

No custom keymaps configured here. The plugin provides its default comment mappings such as `gc` motions and toggles.

## Autopairs

No explicit keymaps configured in `lua/plugins/autopair.lua`.

## Indent Blankline

No explicit keymaps configured in `lua/plugins/indent-blankline.lua`.

## Lualine

No explicit keymaps configured in `lua/plugins/lualine.lua`.

## Markdown Preview

No explicit keymaps configured in `lua/plugins/markdown.lua`.

## Render Markdown

No explicit keymaps configured in `lua/plugins/markdownnvim.lua`.

## Noice

No explicit keymaps configured in `lua/plugins/noice.lua`.

## Theme

No explicit keymaps configured in `lua/plugins/colortheme.lua`.
