 vim.cmd[[packadd packer.nvim]]

require'packer'.startup(function()
  use 'wbthomason/packer.nvim'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
  -- colorscheme
  use 'navarasu/onedark.nvim'
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  -- fern.vim
  use 'lambdalisue/fern.vim'
  use 'lambdalisue/fern-git-status.vim'
  use 'lambdalisue/fern-renderer-nerdfont.vim'
  use 'lambdalisue/nerdfont.vim'
  -- lsp
  use 'neoclide/coc.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use "jacoborus/tender.vim"
  use 'obaland/vfiler.vim'
  use 'obaland/vfiler-fzf'
  use 'ibhagwan/fzf-lua'
  use 'jiangmiao/auto-pairs'
  use "luochen1990/rainbow"
  -- for specific language
  use "rust-lang/rust.vim"
  use "vim-jp/vimdoc-ja"
end)

