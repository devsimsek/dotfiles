# Formatter Installation

Here's the "get shit formatted" guide for my nvim:

## Python
```bash
pip install black isort
```

## JavaScript / TypeScript / HTML / CSS / JSON / YAML / Markdown
```bash
npm install -g prettier
```

## Lua
```bash
brew install stylua
```

## C#
```bash
dotnet tool install -g csharpier
```

## PHP
```bash
composer global require laravel/pint
```

## Terraform / HCL
```bash
brew install terraform
```

## Go (the language with a cute mascot)
```bash
go install golang.org/x/tools/cmd/goimports@latest
go install github.com/fatih/gomodifytags@latest
go install github.com/davidrjenni/cmd/gofillstruct@latest
go install github.com/josharian/impl@latest
```

`gofmt` ships with the toolchain itself — no install needed. conform runs
`goimports` first, then `gofmt`.

## C / C++ (the pain never ends)
```bash
brew install clang-format
```

## Rust (zero-cost abstractions, infinite-cost compile times)
```bash
rustup component add rustfmt
```

## Shell (bash / sh / zsh)
```bash
brew install shfmt
```

## Dockerfile
No extra tool needed — `conform` uses its built-in injected formatter for this one.

## TOML
```bash
cargo install taplo-cli --locked
```

## SQL
```bash
pip install sqlparse
```

---

**Quick verify**: `black --version`, `prettier --version`, `stylua --version`, `csharpier --version`, `pint --version`, `terraform version`, `gofmt -version`, `clang-format --version`, `rustfmt --version`, `shfmt --version`, `taplo --version`, `sqlformat --version`

Auto-formats on save. Use `<leader>fm` to manually format. Or you can always check keymaps.md for more details.
