# tmux, from zero to "oh that's it?"

tmux is a terminal multiplexer. Nobody explains it well, so here's the version
I wish someone had given me: tmux lets you run a bunch of terminal sessions
and panes inside one window, keep them alive when you close the terminal, and
get them back exactly as you left them.

Mental model: **sessions** hold **windows**, windows hold **panes**. That's the
whole pyramid.

The full shortcut list is in [keymaps.md](./keymaps.md). This document is the
"how do I actually do the thing" version, with the splits and the resurrect
stuff front and center, because those are the ones I care about.

## Starting out

```bash
tmux                  # start a session
tmux new -s work      # start a named session
tmux attach -t work   # re-attach to a session
```

Inside a session:

- `C-b d` - detach. Your session stays alive in the background, judging you.
- `C-b s` - switch between open sessions.
- `C-b $` - rename the current session.

## Splitting windows (the good part)

This config unbound the default `%` and `"` splits because they're nonsense.
We split with the two keys your hands already know:

| Keys | What it does |
|------|--------------|
| `\|` | Split the pane left/right (side by side) |
| `-` | Split the pane top/bottom (stacked) |
| `Alt+Left` / `Alt+Right` / `Alt+Up` / `Alt+Down` | Move to the pane in that direction |
| `Ctrl+Alt+Arrow` | Resize the pane by 5 in that direction |
| `C-b z` | Zoom a pane to full screen, press again to unzoom |
| `C-b x` | Kill the current pane |

So the flow is: `|` for an editor and a terminal side by side, Alt+arrows to
bounce between them, Ctrl+Alt+arrows when one is being stingy about width.
Zoom with `C-b z` when you need a full screen for a minute.

## Windows

| Keys | What it does |
|------|--------------|
| `C-b c` | New window |
| `Shift+Left` / `Shift+Right` | Previous / next window |
| `C-b 0` to `C-b 9` | Jump straight to a window by number |
| `C-b ,` | Rename the current window |
| `C-b w` | List windows |
| `C-b &` | Kill the current window |

## Saving and restoring (the reason you're here)

This is the whole point. tmux-resurrect saves your session, tmux-continuum
auto-saves every 15 minutes and restores on start. And because I set
`@resurrect-strategy-vim 'session'`, it restores the vim session inside each
window too. Your editor comes back like nothing happened.

| Keys | What it does |
|------|--------------|
| `C-b Ctrl-s` | Save the session right now |
| `C-b Ctrl-r` | Restore the last saved session |

The habit: `C-b Ctrl-s` before you shut down or ssh to another machine,
`C-b Ctrl-r` when you're back. The half-hour auto-save means even when you
forget, tmux has your back.

## The one-page cheat sheet

| Task | Keys |
|------|------|
| Start tmux | `tmux` |
| Split left/right | `\|` |
| Split top/bottom | `-` |
| Move to a pane | `Alt+Arrow` |
| Resize a pane | `Ctrl+Alt+Arrow` |
| Zoom a pane | `C-b z` |
| New window | `C-b c` |
| Next / previous window | `Shift+Right` / `Shift+Left` |
| Detach | `C-b d` |
| Save session | `C-b Ctrl-s` |
| Restore session | `C-b Ctrl-r` |
| Kill a pane | `C-b x` |
| Kill a window | `C-b &` |

Start a session, split it with `|` and `-`, save it with `C-b Ctrl-s`, detach,
re-attach, restore. Once that loop is comfortable, everything else is
decoration.