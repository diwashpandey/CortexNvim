# **CortexNvim**

A Neovim configuration designed for thinkers who code fast, minimal, modular.
It’s not a “distro.” It’s not “just your config.”
It’s a **workspace** built from first principles: clarity, flow, and control.

---

## Installation

Here’s a polished **Installation** section with your repo link:

---

## Installation

### Linux

```bash
git clone https://github.com/diwashpandey/CortexNvim ~/.config/nvim
```

### Windows

```powershell
git clone https://github.com/diwashpandey/CortexNvim $env:LOCALAPPDATA\nvim
```

### macOS

```bash
git clone https://github.com/diwashpandey/CortexNvim ~/.config/nvim
```

Once cloned, open Neovim:

```bash
nvim
```

On the first launch, **Lazy.nvim** will automatically install all plugins and configurations. After it’s done, restart Neovim to finish setup.

---

## What Next

On first launch, **Lazy.nvim** (the plugin manager) will automatically install all dependencies.
Just open Neovim and wait, it handles the heavy lifting.

Once setup is complete, restart Neovim.

---

## Configuration Structure

The config keeps logic separated for clarity and customization.

| Component                 | File                                |
| ------------------------- | ----------------------------------- |
| Language Server Protocols | `lua/diwash/core/lsp.lua`           |
| Formatters & Linters      | `lua/diwash/plugins/none-ls.lua`    |
| Syntax & Highlighting     | `lua/diwash/plugins/treesitter.lua` |

You can modify or extend any of these if you want to add more languages or behavior.

___

### File Tree Overview

Here’s the complete structure of CortexNvim:
.
├── init.lua
├── lazy-lock.json
└── lua
    └── diwash
        ├── core
        │   ├── diagnostic.lua
        │   ├── init.lua
        │   ├── lsp.lua
        │   ├── mappings.lua
        │   └── options.lua
        ├── lazy
        │   └── init.lua
        └── plugins
            ├── auto-session.lua
            ├── Comments.lua
            ├── lsp
            │   ├── blink.lua
            │   ├── mason-lspconfig.lua
            │   └── mason.lua
            ├── lualine.lua
            ├── noice.lua
            ├── none-ls.lua
            ├── nvim-autopairs.lua
            ├── snacks.lua
            ├── todo-comments.lua
            ├── tokyonight.lua
            ├── treesitter.lua
            └── which-key.lua

8 directories, 30 files


Each file has a single, clear responsibility... nothing is mixed or redundant.
The modular layout allows you to read, replace, or extend any feature independently.

---

## Default Supported Languages

This setup is already tuned for:

**TypeScript, JavaScript, HTML, CSS, Tailwind, Python, Lua, Go**

Update Treesitter parsers first:

```vim
:TSUpdate
```

Then run Mason:

```vim
:Mason
```

Install these tools:

```
golangci-lint
black
clang-format
css-lsp
flake8
goimports
gopls
html-lsp
lua-language-server
pyright
tailwindcss-language-server
typescript-language-server
```

That’s all you need to get a fully working, language-aware setup.

---

## Extending the Setup

To support more languages or formatters:

* Add or configure the language server in `lsp.lua`
* Register formatter/linter in `none-ls.lua`
* Enable Treesitter parsing in `treesitter.lua`

The layout is simple and predictable. Nothing hidden.

---

## Basic Maintenance

* `:MasonUpdate` — updates your LSP/formatter tools
* `:Lazy sync` — syncs plugin changes
* `:TSUpdate` — updates Treesitter parsers
* Restart Neovim if something feels off — it’s often enough.

---

## Philosophy

**CortexNvim** is about balance:
enough structure to be powerful, enough simplicity to stay out of your way.
It doesn’t try to be a distro or a playground, just a clear environment that helps you think and build faster.
