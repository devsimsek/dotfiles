# devsimsek's dotfiles - starship

Starship is my prompt. It's fast, written in Rust (like everything else that
refuses to be slow), and it lets me pretend my terminal has a personality.

The prompt is minimal on purpose: `user: directory` with git status, the
python version when I'm in a venv, the go version when I'm in a Go project, and
a `λ` that changes colour based on your last command's exit code. Because
nothing says "I write code" like a Greek letter that blushes when you screw up.
Yes, the λ is a Half-Life thing. Gordon Freeman solves problems, I just make
the terminal look like a Black Mesa control panel.

## Setup

Copy the config into place:

```bash
ln -s ~/dotfiles/starship/starship.toml ~/.config/starship.toml
```

Then tell your shell to use starship. For zsh:

```zsh
eval "$(starship init zsh)"
```

For bash:

```bash
eval "$(starship init bash)"
```

For fish, you'd `starship init fish | source` - but let's not get weird.

## What's on the prompt

`user: directory ⌘git-branch git-status⇡⇣ python go cmd-duration` then a `λ`.

- **user** - green and bold, because I'm important. Shows always. The hostname
  is configured but left out of the prompt line, because you know which machine
  you're on.
- **directory** - truncated to 15 segments, collapsed into the repo root when
  you're inside a git repo. `…/` means you wandered off.
- **git** - branch (25 chars max), and status: `++(n)` for staged, `⇡`/`⇣`
  for ahead/behind. `⇕` when you've done both because you're living dangerously.
- **python** - only shows once you're in a venv, because global python versions
  are a lie.
- **go** - `🐹 vX.Y.Z`, only in Go projects (`go.mod` or `.go` files). Free
  mascot included.
- **cmd_duration** - only appears if a command took more than 500ms. Yellow.
- **λ** - green if your last command succeeded, red if it didn't. Blame it,
  not the code. The chosen one. All it needs is a crowbar.

## Opt-outs

aws, docker_context, gcloud, nodejs, php and os modules are all disabled. I
don't need a cloud provider logo - or a PHP version - haunting my every
keystroke, and the OS glyph earned its retirement too. The prompt line is
`user@host: directory` now.

## Tuning

`command_timeout` is set to 3000ms instead of the default 500ms, so slow git
repos and lazily-mounted drives don't make your prompt lie about being ready.

## Debugging

```bash
starship explain
STARSHIP_LOG=trace starship prompt
```

You're welcome.
