# tmux Keymaps Reference

Prefix is `C-b`. The default `%` and `"` splits are unbound — we do things our
own way around here.

## Session / General

| Keymap | Action |
|--------|--------|
| `C-b` | Send prefix (escape) |
| `C-b d` | Detach session |
| `C-b s` | Switch session (list) |
| `C-b $` | Rename session |
| `C-b :` | Command prompt |

## Windows

| Keymap | Action |
|--------|--------|
| `C-b c` | New window |
| `C-b ,` | Rename window |
| `C-b 0-9` | Jump to window by index |
| `Shift+Left` | Previous window |
| `Shift+Right` | Next window |
| `C-b w` | List windows |
| `C-b &` | Kill window |

## Panes

| Keymap | Action |
|--------|--------|
| `\|` | Split window horizontally (vertical divider) |
| `-` | Split window vertically (horizontal divider) |
| `Alt+Left` | Move to pane left |
| `Alt+Right` | Move to pane right |
| `Alt+Up` | Move to pane up |
| `Alt+Down` | Move to pane down |
| `C-M-Left` | Resize pane left by 5 |
| `C-M-Right` | Resize pane right by 5 |
| `C-M-Up` | Resize pane up by 5 |
| `C-M-Down` | Resize pane down by 5 |
| `C-b x` | Kill pane |
| `C-b q` | Show pane numbers |
| `C-b o` | Next pane |
| `C-b z` | Toggle pane zoom |

## Copy Mode

| Keymap | Action |
|--------|--------|
| `C-b [` | Enter copy mode |
| `q` | Exit copy mode |

## Plugins (tpm)

| Keymap | Action |
|--------|--------|
| `C-b I` | Install / update plugins (tpm) |
| `C-b U` | Update plugins (tpm) |
| `C-b Ctrl-s` | Save session (resurrect) |
| `C-b Ctrl-r` | Restore session (resurrect) |

> **tmux-continuum** auto-saves every 15 minutes and auto-restores on start, so
> `C-b Ctrl-r` is more of a safety net than a habit.
