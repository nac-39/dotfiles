 vim.cmd[[packadd packer.nvim]]

require'packer'.startup(function()
  use 'wbthomason/packer.nvim'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  -- colorscheme
  use 'navarasu/onedark.nvim'
  -- git
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  -- fern.vim -- file exproler
  use 'lambdalisue/fern.vim'
  use 'lambdalisue/fern-git-status.vim'
  use 'lambdalisue/fern-renderer-nerdfont.vim'
  use 'lambdalisue/nerdfont.vim'
  -- lsp
  use 'neoclide/coc.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  --
  use 'ibhagwan/fzf-lua'
  use 'junegunn/fzf'
  use 'junegunn/fzf.vim'
  use 'jiangmiao/auto-pairs'
  use "luochen1990/rainbow"
  -- コードをコメント化する
  use "numToStr/Comment.nvim"
  -- for specific language
  use "rust-lang/rust.vim"
  use "vim-jp/vimdoc-ja"
  use "github/copilot.vim"
  use "folke/which-key.nvim"
end)

