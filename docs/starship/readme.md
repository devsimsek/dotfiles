# devsimsek's dotfiles - starship

Starship is my prompt. It's fast, written in Rust (like everything else that
refuses to be slow), and it lets me pretend my terminal has a personality.

The prompt is minimal on purpose: `user@host:directory` with git status, the
python version when I'm in a venv, and a `λ` that changes colour based on your
last command's exit code. Because nothing says "I write code" like a Greek
letter that blushes when you screw up.

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

`user@host:directory ⌘git-branch git-status⇡⇣ python cmd-duration` then a `λ`.

- **user@host** - green and bold, because I'm important. Shows always.
- **directory** - truncated to 15 segments, collapsed into the repo root when
  you're inside a git repo. `…/` means you wandered off.
- **git** - branch (25 chars max), and status: `++(n)` for staged, `⇡`/`⇣`
  for ahead/behind. `⇕` when you've done both because you're living dangerously.
- **python** - only shows once you're in a venv, because global python versions
  are a lie.
- **cmd_duration** - only appears if a command took more than 500ms. Yellow.
- **λ** - green if your last command succeeded, red if it didn't. Blame it,
  not the code.

## Opt-outs

aws, docker_context, gcloud, nodejs and php modules are all disabled. I don't
need a cloud provider logo - or a PHP version - haunting my every keystroke.

## Tuning

`command_timeout` is set to 3000ms instead of the default 500ms, so slow git
repos and lazily-mounted drives don't make your prompt lie about being ready.

## Debugging

```bash
starship explain
STARSHIP_LOG=trace starship prompt
```

You're welcome.
