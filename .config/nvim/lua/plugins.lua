 vim.cmd[[packadd packer.nvim]]

require'packer'.startup(function()
  use 'wbthomason/packer.nvim'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'
  use 'lambdalisue/fern.vim'
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

