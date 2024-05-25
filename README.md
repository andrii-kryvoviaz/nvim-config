# Basic neovim configuration

The intent of this repository is to provide a basic configuration for neovim, while to simplify the process of setting up a new environment.

## Installation

1. Clone this repository to `~/.config/nvim`:

```bash
git clone git@github.com:andrii-kryvoviaz/nvim-config.git ~/.config/nvim
```

2. Install plugins (`<leader>pm` to call [Lazy](https://github.com/folke/lazy.nvim) Plugin Manager). Navigate to `Install (I)` and wait for the installation to complete.

#### Dependencies (Optional)

1. Install `ripgrep` and `fd`:

```bash
sudo apt install ripgrep fd-find
```

2. Install `nodejs` and `npm`:

```bash
sudo apt install nodejs npm
```

3. Install `lazygit`:

```bash
sudo apt install lazygit
```

## Keybindings

Leader key is set to `<Space>`. And can be changed in `lua/default/core/keymaps.lua`.

#### General Keymaps
- `<leader>pm`: Open [Lazy](https://github.com/folke/lazy.nvim) Package Manager
- `<leader>ee`: Toggle file explorer
- `<leader>ff`: Fuzzy find files in cwd
- `<leader>qq`: Quit neovim

#### Window Management
- `<leader>sv`: Split window vertically
- `<leader>sh`: Split window horizontally
- `<leader>se`: Make split windows equal width & height
- `<leader>sx`: Close current split window
- `<leader>sm`: Toggle maximize current window
- `<C-h>`: Move to the window on the left
- `<C-j>`: Move to the window below
- `<C-k>`: Move to the window above
- `<C-l>`: Move to the window on the right
- `<C-\>`: Move to the previous window

#### Session Management
- `<leader>wr`: Restore session for cwd
- `<leader>ws`: Save session for auto session root dir

#### Buffer Management
- `bd`: Close current buffer
- `<leader>bl`: Order buffer by language
- `<leader>bb`: Order buffer by directory
- `A-.`: Next buffer
- `A-,`: Previous buffer

#### Insert Mode
- `i`: Enter insert mode
- `jk`: Exit insert mode

#### Text Navigation
- `[count]j`: Move down
- `[count]k`: Move up
- `[count]h`: Move left
- `[count]l`: Move right
- `w`: Move to the beginning of the next word
- `b`: Move to the beginning of the previous word
- `0`: Move to the beginning of the line
- `$`: Move to the end of the line

#### Text Selection
- `Return`: Init selection
- `Tab`: Increment scope selection
- `S-Tab`: Decrement scope selection

#### Text Manipulation
- `x`: Remove current character
- `dd`: Remove current line
- `yy`: Copy current line
- `p`: Paste copied text _after_ the current line
- `P`: Paste copied text _before_ the current line
- `u`: Undo
- `C-r`: Redo
- `A-j`: Move current line down
- `A-k`: Move current line up

#### Commenting
- `gcc`: Toggle line comment
- `gbc`: Toggle block comment
- `gc[count]{motion}`: Toggle region comment
- `gb[count]{motion}`: Toggle region block comment

#### File Navigation (LSP)
- `<leader> rn`: Smart rename
- `gd`: Go to definition
- `gi`: Show implementation


## Plugins
- [`goolord/alpha-nvim`](https://github.com/goolord/alpha-nvim): Lua powered greeter
- [`magatti/auto-session`](https://github.com/rmagatti/auto-session): Small automated session manager
- [`romgrk/barbar.nvim`](https://github.com/romgrk/barbar.nvim): Lightweight tabline plugin
- [`numToStr/Comment.nvim`](https://github.com/numToStr/Comment.nvim): Smart and powerful comment plugin
- [`github/copilot.vim`](https://github.com/github/copilot.vim): GitHub Copilot integration
- [`stevearc/dressing.nvim`](https://github.com/stevearc/dressing.nvim): Improve default neovim UI
- [`stevearc/conform.nvim`](https://github.com/stevearc/conform.nvim): Autoformat on save
- [`lewis6991/gitsigns.nvim`](https://github.com/lewis6991/gitsigns.nvim): Git integration for buffers
- [`lukas-reineke/indent-blankline.nvim`](https://github.com/lukas-reineke/indent-blankline.nvim): Indentation line plugin
- [`kdheepak/lazygit.nvim`](https://github.com/kdheepak/lazygit.nvim): Plugin to run `lazygit` inside neovim (requires `lazygit` to be installed on the host)
- [`mfussenegger/nvim-lint`](https://github.com/mfussenegger/nvim-lint): Asynchronous linting plugin for LSP
- [`nvim-lualine/lualine.nvim`](https://github.com/nvim-lualine/lualine.nvim): Statusline plugin
- [`windwp/nvim-autopairs`](https://github.com/windwp/nvim-autopairs): Autopairs plugin
- [`hrsh7th/nvim-cmp`](https://github.com/hrsh7th/nvim-cmp): Autocompletion plugin
- [`kylechui/nvim-surround`](https://github.com/kylechui/nvim-surround): Add, change, and remove surroundings
- [`nvim-tree/nvim-tree.lua`](https://github.com/nvim-tree/nvim-tree.lua): File explorer plugin
- [`nvim-telescope/telescope.nvim`](https://github.com/nvim-telescope/telescope.nvim): Fuzzy finder plugin
- [`folke/todo-comments.nvim`](https://github.com/folke/todo-comments.nvim): Highlight, list, and search todo comments
- [`nvim-treesitter/nvim-treesitter`](https://github.com/nvim-treesitter/nvim-treesitter): Treesitter configurations and abstraction layer
- [`folke/trouble.nvim`](https://github.com/folke/trouble.nvim): LSP diagnostics, quickfix, and location list
- [`szw/vim-maximizer`](https://github.com/szw/vim-maximizer): Maximizes and restores the current window in Vim
- [`christoomey/vim-tmux-navigator`](https://github.com/christoomey/vim-tmux-navigator): Seamless navigation between tmux panes and vim splits
- [`folke/which-key.nvim`](https://github.com/folke/which-key.nvim): Keybindings helper
- [`williamboman/mason.nvim`](https://github.com/williamboman/mason.nvim): LSP, DAP, linters and formatters manager
- [`neovim/nvim-lspconfig`](https://github.com/neovim/nvim-lspconfig): LSP configurations