# Nvim Dotf

## Introduction

Neovim config meant as a personal starting point.

## Installation

### Requirements

- [Neovim](https://neovim.io) (latest stable or nightly)
- `git`, `make`, `unzip`, `gcc`
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fd](https://github.com/sharkdp/fd)
- A [Nerd Font](https://www.nerdfonts.com/) (optional)
- Clipboard tool (e.g., `xclip`, `wl-copy`, `win32yank`, etc.)
- Language runtimes as needed (`node`, `go`, etc.)

### Steps

```bash
# Backup old config
mv ~/.config/nvim ~/.config/nvim.bak

# Clone this repo
git clone https://github.com/<your-username>/nvim-dotf ~/.config/nvim

# Start Neovim
nvim
```

_Based on kickstart.nvim._
