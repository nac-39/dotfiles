vim.cmd [[packadd packer.nvim]]

require 'packer'.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use { 'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons' }
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
    use 'lambdalisue/glyph-palette.vim'
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
    use 'machakann/vim-sandwich' -- かっこ
    -- for specific language
    use "rust-lang/rust.vim"
    use "vim-jp/vimdoc-ja"
    use "github/copilot.vim"
    use "folke/which-key.nvim"
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })
    use {
        'wincent/command-t',
        run = 'cd lua/wincent/commandt/lib && make',
        setup = function()
            vim.g.CommandTPreferredImplementation = 'lua'
        end,
        config = function()
            require('wincent.commandt').setup({
                -- Customizations go here.
            })
        end,
    }
end)
