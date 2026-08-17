# tmux Keymaps Reference

Prefix is `C-b`. The default `%` and `"` splits are unbound - we do things our
own way around here.

## The ones I actually use

If you remember nothing else, remember these:

| Keymap | Action |
|--------|--------|
| `\|` | Split window left/right |
| `-` | Split window top/bottom |
| `Alt+Arrow` | Move to the pane in that direction |
| `Ctrl+Alt+Arrow` | Resize pane by 5 |
| `Shift+Left` / `Shift+Right` | Previous / next window |
| `C-b Ctrl-s` | Save session (resurrect) |
| `C-b Ctrl-r` | Restore session (resurrect) |

## Resurrect / Continuum (the important bit)

tmux-resurrect saves and restores your sessions, tmux-continuum auto-saves
every 15 minutes and auto-restores on start (`@continuum-restore 'on'`).
`@resurrect-strategy-vim 'session'` is set so your vim sessions come back
exactly where you left them, window by window.

| Keymap | Action |
|--------|--------|
| `C-b Ctrl-s` | Save session now |
| `C-b Ctrl-r` | Restore last saved session |

Save before you shut down or jump machines. Restore when you're back. The
auto-save means even the times you forget, tmux has your back.

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
