# Phantom

A minimalist dark colorscheme for Neovim with faded, washed-out colors designed for long coding sessions.

## Requirements

- Neovim >= 0.11.0
- True color support (`set termguicolors`)

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "PrajwalChigod/phantom.nvim",
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
  config = function()
    require("phantom").setup()
    vim.cmd("colorscheme phantom")
  end
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
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

Phantom supports various configuration options for customization and performance optimization.

### Default Configuration

```lua
require("phantom").setup({
  -- Enable/disable plugin integrations
  integrations = {
    bufferline = true,
    gitsigns = true,
    toggleterm = true,
    fzf_lua = true,
    lualine_highlights = true,
  },

  -- Cache compiled theme for faster subsequent loads (recommended)
  cache = true,
})
```

### Disabling Integrations

If you don't use certain plugins, you can disable their integrations to reduce load time:

```lua
require("phantom").setup({
  integrations = {
    bufferline = false,  -- Disable if you don't use bufferline
    gitsigns = true,
    toggleterm = false,  -- Disable if you don't use toggleterm
    fzf_lua = true,
    lualine_highlights = true,
  },
})
```

### Lazy Loading

For even faster startup times, you can use Phantom's lazy loading feature:

```lua
-- In your plugin manager config
{
  "PrajwalChigod/phantom.nvim",
  lazy = true,  -- Don't load immediately
  init = function()
    -- Setup lazy loading trigger
    require("phantom").lazy_load()
  end,
}

-- Later, when you want to activate the colorscheme
vim.cmd("colorscheme phantom")
```


### Cache Control

Disable caching if you're actively developing the colorscheme:

```lua
require("phantom").setup({
  cache = false,  -- Disable for debugging/development
})
```

#### Clear Cache

To clear the theme cache (useful when updating the colorscheme):

```lua
vim.g.phantom_theme_loaded = nil
```

## Contributing

Contributions are welcome! Please feel free to submit issues or pull requests.

### Reporting Issues

When reporting issues, please include:
- Neovim version (`:version`)
- Steps to reproduce
- Screenshots if applicable

## Development

To modify the colorscheme:

1. Edit `lua/phantom/palette.lua` for color definitions (hex values)
2. Edit `lua/phantom/theme.lua` for base highlight groups
3. Edit `lua/phantom/integrations/*.lua` for plugin-specific highlights
4. Reload with `:luafile` or restart Neovim

### Architecture

- **palette.lua**: Color definitions as hex values
- **theme.lua**: Base highlight groups using `vim.api.nvim_set_hl()`
- **integrations/**: Plugin-specific highlight groups
- **init.lua**: Setup and configuration management

## Credits

- Inspired by minimalist colorscheme design principles
- Zero dependencies achieved through native Neovim API usage


