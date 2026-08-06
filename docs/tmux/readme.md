# devsimsek's dotfiles - tmux

tmux. The thing that keeps my sessions alive when my will to live is fading.
This config lives in a single `.tmux.conf` because, let's be honest, tmux
doesn't need a framework — it needs good taste, and I'm wearing Rosé Pine Moon
head to toe.

## Setup

Install [tpm](https://github.com/tmux-plugins/tpm) first (the plugins won't
load without it), then symlink or copy the config:

```bash
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
tmux source-file ~/.tmux.conf
```

To install the plugins, run `prefix + I` inside a tmux session.

## Prefix

`C-b`. Classic, unbothered, untouchable.

## Keybindings

All the shortcuts are documented in [keymaps.md](./keymaps.md). The headline
acts of rebellion: `|` and `-` split panes (bye-bye `%` and `"`), Alt+Arrows
steer you between panes, and Ctrl+Alt+Arrows resize them.

## Behaviour

- Base index starts at **1** (windows and panes) — we're not savages.
- Windows auto-rename themselves so your bar doesn't turn into a graveyard of
  `zsh`es.
- Mouse on, because who has time for `C-b %`.
- `escape-time 10` so your pinky doesn't suffer.

## Status bar

Rosé Pine Moon, obviously. Pink accents, left shows the session name, right
shows the time and date. There's also a little `(c)devsimsek` because my ego
needs the footer.

## Plugins

- **tpm** — the plugin manager itself.
- **tmux-sensible** — the "you're welcome" defaults.
- **tmux-resurrect** — restores your precious windows.
- **tmux-continuum** — auto-saves and auto-restores, so you never lose a session.

See [keymaps.md](./keymaps.md) for the plugin shortcuts (`C-b Ctrl-s` / `C-b Ctrl-r`).
