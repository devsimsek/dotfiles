#!/usr/bin/env bash
# install.sh
# Symlink this repo's configs into place on a fresh machine.
#
# Safe to re-run: existing symlinks to this repo are left alone, real
# config files get backed up to <path>.bak before being replaced.
#
# Usage:
#   ./install.sh            # do the whole thing
#   ./install.sh --dry-run  # show what would happen without touching anything

set -u

REPO="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

dry_run=0
for arg in "$@"; do
  case "$arg" in
    --dry-run) dry_run=1 ;;
    *) echo "Unknown option: $arg" >&2; exit 1 ;;
  esac
done

say()   { printf '%s\n' "$*"; }
info()  { printf '\033[36m==>\033[0m %s\n' "$*"; }
ok()    { printf '\033[32m  - ok\033[0m %s\n' "$*"; }
skip()  { printf '\033[33m  - skip\033[0m %s\n' "$*"; }
warn()  { printf '\033[33m  - warn\033[0m %s\n' "$*"; }

# src (inside repo) -> dest (on the machine)
configs=(
  "nvim|$HOME/.config/nvim"
  "ghostty|$HOME/.config/ghostty"
  "tmux/.tmux.conf|$HOME/.tmux.conf"
  "fastfetch|$HOME/.config/fastfetch"
  "starship/starship.toml|$HOME/.config/starship.toml"
)

link() {
  local src="$1"
  local dest="$2"
  local src_abs="$REPO/$src"

  mkdir -p "$(dirname "$dest")"

  if [[ -L "$dest" && "$(readlink "$dest")" == "$src_abs" ]]; then
    skip "$dest already points at the repo"
    return
  fi

  if [[ -e "$dest" || -L "$dest" ]]; then
    if (( dry_run )); then
      say "  - backup $dest -> $dest.bak"
    else
      mv "$dest" "$dest.bak"
      ok "backed up $dest"
    fi
  fi

  if (( dry_run )); then
    say "  - symlink $src_abs -> $dest"
  else
    ln -s "$src_abs" "$dest"
    ok "linked $src"
  fi
}

info "Linking configs from $REPO"
for entry in "${configs[@]}"; do
  src="${entry%%|*}"
  dest="${entry##*|}"
  link "$src" "$dest"
done

# zed wants its config at ~/.config/zed; copy instead of symlink
zed_src="$REPO/zed/zed"
zed_dest="$HOME/.config/zed"
if [[ -d "$zed_dest" && ! -L "$zed_dest" ]]; then
  if (( dry_run )); then
    say "  - copy $zed_src -> $zed_dest (backing up existing first)"
  else
    mv "$zed_dest" "$zed_dest.bak"
    ok "backed up $zed_dest"
  fi
fi
if (( dry_run )); then
  say "  - copy $zed_src -> $zed_dest"
else
  mkdir -p "$zed_dest"
  cp -R "$zed_src/." "$zed_dest/"
  ok "copied zed config"
fi

# tmux plugins manager
tpm="$HOME/.tmux/plugins/tpm"
if [[ ! -d "$tpm" ]]; then
  if (( dry_run )); then
    say "  - clone tpm -> $tpm"
  else
    git clone --depth 1 https://github.com/tmux-plugins/tpm "$tpm"
    ok "installed tpm"
  fi
else
  skip "tpm already installed"
fi

say ""
info "Done."
if (( ! dry_run )); then
  say ""
  say "Next steps:"
  say "  - tmux:  open tmux and run prefix + I to install plugins"
  say "  - starship: add \"eval \$(starship init zsh)\" to your shell rc"
  say "  - nvim:  fire it up; Lazy installs plugins on first run"
fi