# Zed Keymaps Reference

These are the bindings I actually kept (and a few I stole for my own benefit).
They're grouped by context, matching how `keymap.json` is structured. If
something here doesn't do what you expect, blame Zed, not me.

## Global

| Keymap | Action |
|--------|--------|
| `cmd-shift-[` | Activate previous item |
| `cmd-shift-]` | Activate next item |
| `cmd-=` | Reset buffer font size |

## Editor

### File & Buffers

| Keymap | Action |
|--------|--------|
| `cmd-n` | New file |
| `cmd-pagedown` | Move page down |
| `cmd-pageup` | Move page up |
| `cmd-home` | Move to beginning of file |
| `cmd-end` | Move to end of file |
| `cmd-shift-home` | Select to beginning |
| `cmd-shift-end` | Select to end |

### Editing

| Keymap | Action |
|--------|--------|
| `ctrl-shift-j` | Join lines |
| `cmd-d` | Duplicate line down |
| `cmd-backspace` | Delete line |
| `cmd-alt-enter` | Newline above |
| `shift-enter` | Newline below |
| `alt-shift-g` | Split selection into lines |
| `cmd-/` | Toggle comments |
| `ctrl-g` | Select next occurrence |
| `ctrl-cmd-g` | Select previous occurrence |
| `alt-up` | Select larger syntax node |
| `alt-down` | Select smaller syntax node |
| `shift-alt-up` | Move line up |
| `shift-alt-down` | Move line down |
| `alt--` | Unfold all |

### Folding

| Keymap | Action |
|--------|--------|
| `cmd--` | Fold |
| `cmd-+` | Unfold lines |

### Formatting & Renaming

| Keymap | Action |
|--------|--------|
| `cmd-alt-l` | Format |
| `shift-f6` | Rename |
| `cmd-shift-r` | Toggle replace |

### Navigation

| Keymap | Action |
|--------|--------|
| `cmd-[` | Go back |
| `cmd-]` | Go forward |
| `cmd-b` | Go to definition |
| `cmd-alt-b` | Go to definition (split) |
| `cmd-shift-b` | Go to type definition |
| `cmd-alt-shift-b` | Go to type definition (split) |
| `alt-f7` | Find all references |
| `cmd-alt-f7` | Find all references |
| `f2` | Go to next diagnostic |
| `shift-f2` | Go to previous diagnostic |
| `ctrl-alt-shift-down` | Go to hunk |
| `ctrl-alt-shift-b` | Select to previous word start |

### Font size

| Keymap | Action |
|--------|--------|
| `cmd-)` | Increase buffer font size |
| `cmd-_` | Decrease buffer font size |

## Editor - full screen (`mode == full`)

| Keymap | Action |
|--------|--------|
| `cmd-f12` | Toggle outline |
| `cmd-7` | Toggle outline |
| `cmd-shift-o` | Toggle file finder |
| `cmd-l` | Toggle go-to-line |
| `alt-enter` | Toggle code actions |

> Note: `cmd-r` (search/replace deploy) is unbound here - you can still get to
> it with `cmd-shift-r`.

## Workspace

| Keymap | Action |
|--------|--------|
| `cmd-shift-o` | Toggle file finder |
| `cmd-shift-a` | Toggle command palette |
| `shift shift` | Toggle command palette |
| `cmd-alt-o` | Toggle project symbols |
| `cmd-1` | Toggle left dock |
| `cmd-6` | Deploy diagnostics |
| `cmd-j` | Toggle terminal panel |
| `cmd-i` | Toggle zoom |

## Pane

| Keymap | Action |
|--------|--------|
| `cmd-alt-left` | Go back |
| `cmd-alt-right` | Go forward |

## Project Panel

| Keymap | Action |
|--------|--------|
| `enter` | Open |
| `cmd-backspace` | Trash (with prompt) |
| `backspace` | Trash (with prompt) |
| `delete` | Trash (with prompt) |
| `shift-delete` | Delete (permanently, with prompt) |
| `shift-f6` | Rename |

> Pro tip: `shift-delete` bypasses the trash. Use it like you mean it.
