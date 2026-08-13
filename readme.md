# devsimsek's dotfiles

Welcome to the place where my machines call home. This repository holds the
configuration that follows me around - a terminal that looks nice, an editor
that stays out of my way, a tmux that splits things the way I like, and a
fastfetch logo that does absolutely nothing except look pretty.

Everything is split into per-tool folders, and each one has its own little
documentation page under [`docs/`](./docs/). Batteries included, opinions sold
separately.

## What's in the box

| Tool | What it is | Docs |
|------|------------|------|
| [nvim](./nvim/) | Neovim config - Lazy, Mason, treesitter, the works | [docs/nvim](./docs/nvim/) |
| [ghostty](./ghostty/) | My terminal emulator of choice (Rosé Pine Moon, obviously) | [docs/ghostty](./docs/ghostty/) |
| [tmux](./.tmux.conf) | Terminal multiplexer config (prefix `C-b`, Rosé Pine Moon status) | [docs/tmux](./docs/tmux/) |
| [zed](./zed/) | Full-fledged editor for when I want to sit down properly | [docs/zed](./docs/zed/) |
| [fastfetch](./fastfetch/) | A pretty logo + some system info. That's it. That's the post. | [docs/fastfetch](./docs/fastfetch/) |
| [starship](./starship/) | The prompt that lets my terminal have a personality (`λ`, obviously) | [docs/starship](./docs/starship/) |

## Getting started

Each tool's config lives in its own directory, so you can cherry-pick whatever
you like instead of adopting my entire personality. Symlink the bits you want:

```bash
ln -s ~/dotfiles/nvim      ~/.config/nvim
ln -s ~/dotfiles/ghostty   ~/.config/ghostty
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/fastfetch ~/.config/fastfetch
ln -s ~/dotfiles/starship/starship.toml ~/.config/starship.toml
```

Zed reads its config from `~/.config/zed/` - copy the `zed/zed/` contents over,
or symlink the whole thing if you're feeling spicy.

## The theme

Everything is Rosé Pine Moon. Everywhere. All the time. If a tool can hold a
theme, it's Rosé Pine Moon. No you cannot change my mind.

## Docs

- [fastfetch](./docs/fastfetch/readme.md)
- [ghostty](./docs/ghostty/readme.md)
- [nvim](./docs/nvim/readme.md) - including [keymaps](./docs/nvim/keymaps.md) and [formatters](./docs/nvim/formatters.md)
- [tmux](./docs/tmux/readme.md) - including [keymaps](./docs/tmux/keymaps.md)
- [zed](./docs/zed/readme.md) - including [keymaps](./docs/zed/keymaps.md)
- [starship](./docs/starship/readme.md)

## License

See [`license`](./license).

## Credits

Me. Also the very nice people who built the tools I leech off of - check each
sub-directory's docs for the ones I actually use.
