"----------------------------------------
"
" Author        :   Lasercata
" Last update   :   2023.08.21
" Version       :   v2.0
"
"----------------------------------------


"------Plugins
call plug#begin('~/.config/nvim/plugged')
    "---Lib
    "-plenary.nvim contain useful functions needed for Telescope and other plugins
    Plug 'nvim-lua/plenary.nvim'


    "---Prog
    "-UltiSnips snippets
    Plug 'sirver/ultisnips'

    "-Vimtex
    Plug 'lervag/vimtex'

    "-Vim-Slime (for ocaml)
    "Plug 'jpalardy/vim-slime'
        "let g:slime_target = "tmux"
        "let g:slime_paste_file = "$HOME/.slime_paste"


    "---LSP
    "-Config for nvim LSP
    Plug 'neovim/nvim-lspconfig'

    "-nvim-cmp, for autocompletion
    Plug 'hrsh7th/cmp-nvim-lsp'
    Plug 'hrsh7th/cmp-buffer'
    Plug 'hrsh7th/cmp-path'
    Plug 'hrsh7th/cmp-cmdline'
    Plug 'hrsh7th/nvim-cmp'
    Plug 'quangnguyen30192/cmp-nvim-ultisnips'

    "-Show function signature when typing
    Plug 'ray-x/lsp_signature.nvim'

    "-YouCompleteMe, for completion
    " Plug 'Valloric/YouCompleteMe'

    "-coq-nvim, for autocompletion
    " Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}


    "---Utilities
    "-ChadTree : better than NerdTree (a file explorer in a side bar)
    " Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
    "     nnoremap <leader>e <cmd>CHADopen<CR>

    "-Nvim-tree (file explorer)
    Plug 'nvim-tree/nvim-tree.lua'

    "-Pear-tree : auto close some delimiters
    Plug 'tmsvg/pear-tree'

    "-Tagbar : a class outline viewer for Vim
    Plug 'preservim/tagbar'

    "-Telescope : a fuzzy finder
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }

    "-harpoon
    Plug 'ThePrimeagen/harpoon'

    "-Float terminal
    Plug 'numToStr/FTerm.nvim'

    " "-Kitty runner
    " Plug 'jghauser/kitty-runner.nvim'

    "-Comment.nvim : adding bindings to comment code
    Plug 'numToStr/Comment.nvim'

    "-CheatSheet : use telescope to find vim info
    Plug 'sudormrfbin/cheatsheet.nvim'

    "-Which-key : show possible key bindings of the command you started typing
    Plug 'folke/which-key.nvim'

    "-code runner
    Plug 'CRAG666/code_runner.nvim'

    "-Indentation guides (lines)
    Plug 'lukas-reineke/indent-blankline.nvim'
        " This plugin needs `set list`.
        set list

    "-Simpler folds for python.
    " Plug 'tmhedberg/SimpylFold'


    "---Style
    "-Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
        let g:airline#extensions#tabline#enabled = 1
        let g:airline_powerline_fonts = 1

    "-Tmuxline
    Plug 'edkolev/tmuxline.vim'
        let g:airline#extensions#tmuxline#enabled = 1
        let airline#extensions#tmuxline#snapshot_file = "~/.tmux-status.conf"

    "-Nightfly colorscheme
    Plug 'bluz71/vim-nightfly-colors', { 'as': 'nightfly' }
        "let g:nightflyTransparent= v:true

    "-Nightfly_but_ff4500 colorscheme
    Plug 'lasercata/nightfly_but_ff4500', { 'as': 'nightfly_but_ff4500' }
        "let g:nightflyTransparent= v:true


    "-Monokai colorscheme
    Plug 'tanvirtin/monokai.nvim'
        "To keep transparency after changing the colorscheme :
        au ColorScheme * hi Normal ctermbg=none guibg=none

    "-Neoscroll : smooth scrolling
    Plug 'karb94/neoscroll.nvim'
call plug#end()


"------Plugins require and definitions
for plug_file in split(globpath("~/.config/nvim/config/plugins", "*.vim"), '\n') 
    execute('source '.plug_file)
endfor

for plug_file in split(globpath("~/.config/nvim/config/plugins", "*.lua"), '\n') 
    execute('source '.plug_file)
endfor
