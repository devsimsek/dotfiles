# Neovim Keymaps Reference

## Leader Key
- **Leader**: `<Space>`

## Basic Navigation & Commands

| Keymap | Mode | Action |
|--------|------|--------|
| `<leader>nh` | Normal | Clear search highlights |
| `<leader>q` | Normal | Quit current window |
| `<leader>Q` | Normal | Force quit all |
| `<C-s>` | Normal, Insert | Save file |

## Undo / Redo

| Keymap | Mode | Action |
|--------|------|--------|
| `<C-z>` | Normal, Insert | Undo |
| `<C-r>` | Normal, Insert | Redo |

## Window Management

| Keymap | Mode | Action |
|--------|------|--------|
| `<C-h>` | Normal | Move to left window |
| `<C-j>` | Normal | Move to bottom window |
| `<C-k>` | Normal | Move to top window |
| `<C-l>` | Normal | Move to right window |
| `<leader>w-` | Normal | Split window horizontally |
| `<leader>w\|` | Normal | Split window vertically |
| `<leader>we` | Normal | Make windows equal size |
| `<leader>w,` | Normal | Decrease window width by 5 |
| `<leader>w.` | Normal | Increase window width by 5 |

## Buffer Navigation

| Keymap | Mode | Action |
|--------|------|--------|
| `[b` | Normal | Previous buffer |
| `]b` | Normal | Next buffer |
| `<leader>bd` | Normal | Delete current buffer |

## Tab Navigation

| Keymap | Mode | Action |
|--------|------|--------|
| `<leader>tn` | Normal | New tab |
| `<leader>tl` | Normal | Next tab |
| `<leader>th` | Normal | Previous tab |
| `<leader>tc` | Normal | Close tab |

## Search & Replace

| Keymap | Mode | Action |
|--------|------|--------|
| `<leader>sr` | Normal | Start search & replace (whole file) |
| `<leader>sr` | Visual | Start search & replace (selection) |

## Line Movement

| Keymap | Mode | Action |
|--------|------|--------|
| `<Option-j>` | Normal | Move line down |
| `<Option-k>` | Normal | Move line up |
| `<Option-j>` | Visual | Move selection down |
| `<Option-k>` | Visual | Move selection up |

**Note on macOS**: `<Option>` is the `Alt` key. Press and hold Option, then press j or k.

## Visual Mode Improvements

| Keymap | Mode | Action |
|--------|------|--------|
| `<` | Visual | Decrease indent (keep selection) |
| `>` | Visual | Increase indent (keep selection) |

## Commenting

| Keymap | Mode | Action |
|--------|------|--------|
| `gcc` | Normal | Toggle comment line |
| `gbc` | Normal | Toggle comment block |
| `gc` | Visual | Toggle comment selection |
| `gb` | Visual | Toggle block comment selection |

## Surrounding (mini.surround)

| Keymap | Mode | Action |
|--------|------|--------|
| `sa` + `motion` + `char` | Normal | Add surrounding characters |
| `sd` + `char` | Normal | Delete surrounding characters |
| `sr` + `old` + `new` | Normal | Replace surrounding characters |

## Telescope (Fuzzy Finder)

| Keymap | Mode | Action |
|--------|------|--------|
| `<leader>ff` | Normal | Find files |
| `<leader>fg` | Normal | Live grep (search text) |
| `<leader>fb` | Normal | List open buffers |
| `<leader>fh` | Normal | Help tags |
| `<leader>fk` | Normal | Keymaps |
| `<leader>fd` | Normal | Diagnostics |
| `<leader>fr` | Normal | Recent files (oldfiles) |
| `<leader>fc` | Normal | Commands |
| `<leader>fs` | Normal | Document symbols (LSP) |
| `<leader>fS` | Normal | Workspace symbols (LSP) |

Inside Telescope: `<C-d>` toggles hidden files, `<C-h>` shows key help.

## File Explorer (Nvim Tree)

| Keymap | Mode | Action |
|--------|------|--------|
| `<leader>e` | Normal | Toggle file explorer |
| `<leader>E` | Normal | Reveal current file in explorer |

## LSP (Language Server Protocol)

| Keymap | Mode | Action |
|--------|------|--------|
| `gd` | Normal | Go to definition |
| `<leader>pd` | Normal | Peek definition (telescope) |
| `gr` | Normal | Go to references |
| `gi` | Normal | Go to implementation |
| `K` | Normal | Hover (show documentation) |
| `<leader>rn` | Normal | Rename symbol |
| `<leader>ca` | Normal | Code actions |
| `<leader>d` | Normal | Show diagnostics in floating window |
| `[d` | Normal | Previous diagnostic |
| `]d` | Normal | Next diagnostic |

## Diagnostics (Trouble)

| Keymap | Mode | Action |
|--------|------|--------|
| `<leader>xx` | Normal | Toggle workspace diagnostics list |
| `<leader>xw` | Normal | Toggle current buffer diagnostics list |

## Git (Gitsigns)

| Keymap | Mode | Action |
|--------|------|--------|
| `<leader>gg` | Normal | Toggle git signs (visible/hidden) |
| `<leader>gb` | Normal | Show git blame |
| `<leader>gd` | Normal | Diff current hunk |
| `<leader>gs` | Normal | Stage hunk |
| `<leader>gr` | Normal | Reset hunk |
| `<leader>gp` | Normal | Preview hunk |
| `[c` | Normal | Previous git change |
| `]c` | Normal | Next git change |

## Terminal (Toggleterm)

| Keymap | Mode | Action |
|--------|------|--------|
| `<leader>tf` | Normal | Floating terminal |
| `<leader>td` | Normal | Docked (horizontal) terminal |
| `<leader>tF` | Normal | Terminal in a new tab |

## Formatting

| Keymap | Mode | Action |
|--------|------|--------|
| `<leader>fm` | Normal | Format current buffer |

## Go (gopher.nvim)

| Keymap | Mode | Action |
|--------|------|--------|
| `<leader>ga` | Normal | Add json struct tags |
| `<leader>gA` | Normal | Add struct tags (prompt for name) |
| `<leader>gx` | Normal | Remove struct tags |

## TODO / FIXME

| Keymap | Mode | Action |
|--------|------|--------|
| `<leader>st` | Normal | Search TODOs/FIXMEs with Telescope |

## Tips

- **Which-key**: Press `<leader>` and wait to see all available commands
- **Quick movement**: Use `Ctrl+hjkl` instead of arrow keys for window navigation
- **Completion**: Press `<C-Space>` in Insert mode to trigger completion, use `<Tab>`/`<S-Tab>` to navigate
- **Snippets**: Press `<Tab>` to expand snippets and jump between placeholders
- **Sessions**: Your session is auto-saved and auto-restored across restarts. Magic.

