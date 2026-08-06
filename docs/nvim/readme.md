# devsimsek's dotfiles - nvim configuration

Welcome to my own liberation of editors (incl. vi, emacs and nano - I used them for such a long time I don't even want to mention) Neovim configuration!

This subdirectory of my dotfiles repository contains (as you have guessed it!) the neovim-specific config. Out of the box, the repo ships **Mason**, **Lazy**, and a fully modular structure for you to program or customise it according to your taste. Batteries included, opinions sold separately.

---

## Quick overview of what's in the box

```text
~/.config/nvim/
  init.lua                  # entrypoint - the door that opens the magic
  lazy-lock.json            # lockfile so your plugins don't drift

  lua/
    core/
      options.lua           # all the vim.opt stuff - line numbers, tabs, etc.
      keymap.lua            # custom keybindings (leader = space, btw)
      auto.lua              # autocmds - yank highlight, trailing whitespace purge

    plugins/
      init.lua              # lazy.nvim bootstrap + plugin list
      themes.lua            # rose-pine because we have taste
      lsp.lua               # mason + lspconfig (so many LS servers omg)
      completion.lua        # nvim-cmp + LuaSnip (tab to expand, tab to rule)
      treesitter.lua        # syntax highlighting that actually works
      navigation.lua        # telescope (ripgrep-powered fuzzy everything)
      explorer.lua          # nvim-tree (it's like NERDTree but modern)
      git.lua               # gitsigns (blame, diff hunks, the works)
      ui.lua                # lualine + indent-blankline + which-key
      formatting.lua        # conform.nvim (auto-format on save hell yeah)
      comment.lua           # Comment.nvim (gcc/gbc for toggling comments)
      surround.lua          # mini.surround (sa/sd/sr for bracket wizardry)
      todo.lua              # todo-comments (TODOs and FIXMEs now glow in the dark)
      trouble.lua           # trouble.nvim (pretty diagnostics list)
      sessions.lua          # auto-session (close & reopen nvim, pick up where ya left off)
      terminal.lua          # toggleterm (floating / docked terminal, no more tmux splits)

  FORMATTERS.md             # shipped formatters info (and how to install 'em :D)
  KEYMAPS.md                # quick reference of all my keymaps
```

---

## Languages I actually use this thing with

| Language | LSP | Formatter | Treesitter |
|----------|-----|-----------|------------|
| Lua | - (vim's built-in hinting) | stylua | lua |
| Python | pyright | black + isort | python |
| JavaScript / TS | ts_ls | prettier | javascript, typescript, tsx |
| HTML / CSS / SCSS | html, cssls | prettier | html, css, scss |
| JSON / YAML | jsonls, yamlls | prettier | json, yaml, json5 |
| Markdown | - | prettier | markdown, markdown_inline |
| C# | omnisharp | csharpier | c_sharp |
| PHP | phpactor | pint | php |
| Go | gopls | gofumpt + goimports | go, gomod, gowork |
| C / C++ | clangd | clang-format | c, cpp |
| Rust | rust_analyzer | rustfmt | rust |
| Shell (bash/sh/zsh) | bashls | shfmt | bash |
| Dockerfile | dockerls | injected | dockerfile |
| TOML | - | taplo | toml |
| SQL | sqlls | sqlformat | sql |
| Terraform / HCL | terraformls | terraform fmt | terraform, hcl |

---

## Get up and running

1. **Install Neovim** (≥ 0.9, but honestly just use nightly):
   ```bash
   brew install neovim
   ```

2. **Clone this config** (if you haven't already symlinked it from your dotfiles):
   ```bash
   git clone https://github.com/devsimsek/dotfiles ~/dotfiles
   ln -s ~/dotfiles/nvim ~/.config/nvim
   ```

3. **Fire up nvim** - Lazy will bootstrap itself and install all plugins on first launch. Just wait for the magic.

4. **Install formatters** for the languages you use. See [formatters.md](./formatters.md) for per-lang instructions. TL;DR: `brew`, `npm`, `pip`, `go install`, `cargo`, `rustup`... the usual suspects.

5. **Install LSP servers** - open nvim and run `:Mason` to pick what you need. Mase listed servers will auto-install on first run if they're set in `ensure_installed`.

---

## Philosophy (or lack thereof)

This config tries to be **fast, pretty, and feature-packed** without turning into one of those 3000-line init.lua monoliths you see on Reddit. It's modular; each plugin category gets its own file under `lua/plugins/`. Want to rip out git signs? Delete `git.lua`. Want to swap rose-pine for catppuccin? Replace `themes.lua`. It's your playground now.

Also: auto-format on save. No arguments there.

---

## Known issues (skill issues, mostly)

- Some LSP servers (looking at you, omnisharp) take forever to install on first Mason run. Go grab a coffee.
- If telescope live_grep doesn't find anything, you probably don't have `ripgrep` installed. `brew install ripgrep` fixes that (if you are on mac/linux).
- `mini.surround` key sequences take a minute to get into muscle memory. Stick with it, it's worth it.
