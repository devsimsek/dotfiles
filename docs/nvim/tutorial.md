# So you've found yourself in nvim

Welcome, brave soul. This is a short, honest guide to actually using this
config without having a nervous breakdown. It assumes you know roughly what nvim
is and focuses on the stuff people ask about the most: word-jumping, creating
files, and splitting windows.

The full list of keybindings lives in [keymaps.md](./keymaps.md). This is the
"how do I do the thing" version.

## The three things you must know

- **Leader is Space.** Hit `<Space>` and give which-key a second. It shows you
  every keybinding that starts with Space. It's basically a menu you can never
  forget to open.
- **`<C-s>` saves.** Always. Get it into your fingers.
- **Your sessions auto-save and auto-restore.** Close nvim, reopen it, and
  you're where you left off. It's magic or something.

## Jumping around words

This is pure vim, no config magic, but it's the single best skill to develop.

| Keys | What it does |
|------|--------------|
| `w` | Jump to the start of the next word |
| `b` | Jump back to the start of the previous word |
| `e` | Jump to the end of the next word |
| `W` / `B` / `E` | Same as above but for WORDS (ignore punctuation) |
| `ge` | End of the previous word |
| `f<char>` | Jump forward to the next `char` on the line |
| `F<char>` | Jump backward to the previous `char` on the line |
| `t<char>` | Jump up to (just before) the next `char` |
| `;` | Repeat the last `f` / `F` / `t` jump |
| `0` | Start of line |
| `^` | First non-blank character of line |
| `$` | End of line |
| `{` / `}` | Jump to previous / next blank line |
| `%` | Matching bracket (with your cursor on a bracket) |
| `gg` | Top of file |
| `G` | Bottom of file |
| `/thing` | Search, then `n` / `N` to hop between hits |

Practice drill: `w` is how you move through code. `f(` is how you zip to the
next opening paren in one keypress. Add `;` after `f` and you're gliding. Once
`w` and `f` are muscle memory, arrows will feel like a punishment.

To clear the search highlight once you're done: `<leader>nh`.

## Creating files

Three ways, all valid:

**1. Telescope (fancy):** `<leader>ff`, type the full path of a file that
doesn't exist yet (e.g. `src/newfile.rs`) and hit Enter. This config makes
Enter create the file when nothing matches: it opens a fresh buffer and any
missing parent folders are created for you. Write something, `<C-s>`, and the
file is saved. If the picker is being stubborn and matches something you didn't
mean, type the path and hit `<C-n>` instead - it always creates a new file.
Hidden files included, dotfiles not filtered, it's all there.

**2. nvim-tree (punk rock):** `<leader>e` opens the file explorer. In the tree:

- `a` - create a new file (type the name, Enter)
- `d` - delete the file/folder under the cursor
- `r` - rename it
- `x` then `p` - cut/paste to move stuff around

**3. The ancient way:** `:edit src/newfile.rs` then `<C-s>`.

## Splitting windows

This config splits the way sane people do:

| Keys | What it does |
|------|--------------|
| `<leader>w-` | Split horizontally (new window below) |
| `<leader>w\|` | Split vertically (new window to the right) |
| `<C-h>` / `<C-j>` / `<C-k>` / `<C-l>` | Move to left / below / above / right window |
| `<leader>we` | Make all windows equal size |
| `<leader>w,` | Shrink the window width by 5 |
| `<leader>w.` | Grow the window width by 5 |
| `<leader>q` | Close the current window |

So: `<leader>w|` to get an editor side by side, `<C-h>` / `<C-l>` to bounce
between them, `<leader>we` when you've made a mess. The config sets
`splitright` and `splitbelow`, so splits land where you'd expect them (right
and below), not wherever vim's mood takes it.

## The thirty second cheat sheet

| Task | Keys |
|------|------|
| Save | `<C-s>` |
| Find / create a file | `<leader>ff` |
| Search all code | `<leader>fg` (needs ripgrep installed) |
| Open file explorer | `<leader>e`, `a` to create, `d` to delete, `r` to rename |
| Split left/right | `<leader>w\|` |
| Split top/bottom | `<leader>w-` |
| Jump to a window | `<C-h>` `<C-j>` `<C-k>` `<C-l>` |
| Close a window | `<leader>q` |
| Jump word by word | `w` / `b` / `e` |
| Jump to a character | `f<char>`, repeat with `;` |
| Clear search highlight | `<leader>nh` |
| Format the file | `<leader>fm` |
| Previous / next buffer | `[b` / `]b` |
| Delete a buffer | `<leader>bd` |
| Terminal (floating) | `<leader>tf` |

Take it slow. Get `<C-s>`, `w`, and `<leader>w|` + `<C-h>/<C-l>` down first.
Everything else is just garnish.