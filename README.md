# Phantom

A minimalist dark colorscheme for Neovim with faded, washed-out colors designed for long coding sessions.

## Requirements

- Neovim >= 0.11.0
- [lush.nvim](https://github.com/rktjmp/lush.nvim) - Required dependency
- True color support (`set termguicolors`)

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "PrajwalChigod/phantom.nvim",
  dependencies = { "rktjmp/lush.nvim" },
  priority = 1000,
  config = function()
    require("phantom").setup()
    vim.cmd("colorscheme phantom")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "PrajwalChigod/phantom.nvim",
  requires = { "rktjmp/lush.nvim" },
  config = function()
    require("phantom").setup()
    vim.cmd("colorscheme phantom")
  end
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'rktjmp/lush.nvim'
Plug 'PrajwalChigod/phantom.nvim'
```

Then in your `init.vim` or `init.lua`:

```lua
require("phantom").setup()
vim.cmd("colorscheme phantom")
```

## Usage

### Basic Setup

```lua
-- Lua
require("phantom").setup()
vim.cmd("colorscheme phantom")
```

```vim
" Vimscript
lua require("phantom").setup()
colorscheme phantom
```

### With Lualine

Phantom includes a custom Lualine theme that matches the colorscheme:

```lua
require("lualine").setup {
  options = {
    theme = require("phantom").lualine()
  }
}
```

### Access Color Palette

You can access the color palette for custom configurations:

```lua
local palette = require("phantom").palette()

-- Use palette colors in your custom configurations
-- palette.blue, palette.red, palette.fg, etc.
```

## Supported Plugins

Phantom includes native support for:

- **[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)** - Statusline
- **[bufferline.nvim](https://github.com/akinsho/bufferline.nvim)** - Buffer/tab line
- **[gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)** - Git decorations
- **[toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)** - Terminal management
- **[fzf-lua](https://github.com/ibhagwan/fzf-lua)** - Fuzzy finder

More integrations coming soon!

## Color Palette

### Background Colors
- **Background**: `hsl(30, 5, 10)` - Warm dark background
- **Surface**: `hsl(0, 0, 15)` - Elevated surfaces

### Foreground Colors
- **Primary**: `hsl(0, 0, 60)` - Main text
- **Dimmed**: `hsl(0, 0, 50)` - Secondary text
- **Dark**: `hsl(0, 0, 40)` - Comments, line numbers

### Syntax Colors
- **Blue** `hsl(220, 25, 55)` - Functions, keywords
- **Marsala** `hsl(10, 40, 35)` - Types, structures
- **Orange** `hsl(40, 30, 50)` - Numbers, literals

### UI Colors
- **Red** `hsl(0, 38, 50)` - Errors
- **Yellow** `hsl(45, 35, 55)` - Warnings
- **Green** `hsl(140, 22, 52)` - Success, hints

## Configuration

Currently, Phantom works out of the box with sensible defaults. Configuration options will be added in future releases.

## Contributing

Contributions are welcome! Please feel free to submit issues or pull requests.

### Reporting Issues

When reporting issues, please include:
- Neovim version (`:version`)
- Steps to reproduce
- Screenshots if applicable

## Development

Phantom is built using [Lush](https://github.com/rktjmp/lush.nvim), a colorscheme creation tool for Neovim.

To modify the colorscheme:

1. Edit `lua/phantom/palette.lua` for color definitions
2. Edit `lua/phantom/theme.lua` for highlight groups
3. Reload with `:Lushify` or `:luafile %`

## Credits

- Built with [Lush.nvim](https://github.com/rktjmp/lush.nvim) by [@rktjmp](https://github.com/rktjmp)


