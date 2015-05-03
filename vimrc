" pathogen stuff
call pathogen#infect()

let mapleader = ","

"" ruby doc and jquery doc api
let g:ruby_doc_command='open'
let g:jquery_doc_command='open'

"" rspec syntax highlight
autocmd BufRead *_spec.rb syn keyword rubyRspec describe context it specify it_should_behave_like before after setup subject its shared_examples_for shared_context let feature scenario
highlight def link rubyRspec Function

"" es6 filetype is javascript
au BufNewFile,BufRead *.es6 setf javascript

"" handlebars double curly with surround '-'
autocmd FileType hbs let b:surround_45 = "{{ \r }}"

"" vim rails projections

let g:rails_projections = {
      \ "Gemfile": {
      \   "command": "gemfile"
      \ },
      \ "config/projections.json": {
      \   "command": "projections"
      \ },
      \ "spec/features/*_spec.rb": {
      \   "command": "feature",
      \   "template": "require 'rails_helper'\n\nfeature '%h' do\n\nend",
      \ }}

let g:rails_gem_projections = {
      \ "active_model_serializers": {
      \   "app/serializers/*_serializer.rb": {
      \     "command": "serializer",
      \     "affinity": "model",
      \     "test": "spec/serializers/%s_spec.rb",
      \     "related": "app/models/%s.rb",
      \     "template": "class %SSerializer < ActiveModel::Serializer\nend"
      \   }
      \ },
      \ "draper": {
      \   "app/decorators/*_decorator.rb": {
      \     "command": "decorator",
      \     "affinity": "model",
      \     "test": "spec/decorators/%s_spec.rb",
      \     "related": "app/models/%s.rb",
      \     "template": "class %SDecorator < Draper::Decorator\nend"
      \   }
      \ },
      \ "factory_girl_rails": {
      \   "spec/factories/*.rb": {
      \     "command": "factory",
      \      "related": "app/model/%s.rb",
      \     "template": ["FactoryGirl.define do", "factory :%s do", "end", "end"]
      \   }
      \ }}

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "MyUltiSnips"]

""
"" Backup and swap
""
set nobackup
set nowritebackup
set noswapfile

""
"" visual
""
set visualbell t_vb=
set background=dark
set t_Co=256
colorscheme railscasts
set nu			" Show line numbers
set wrap		" Wrap lines
"au WinLeave * setlocal nocursorline nocursorcolumn
"au WinEnter * setlocal cursorline cursorcolumn
set cursorline cursorcolumn
hi CursorLine ctermbg=233
hi CursorColumn ctermbg=233
set colorcolumn=80

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

""
"" Whitespace
""
set tabstop=2                     " a tab is two spaces
set expandtab                     " use spaces, not tabs"
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode		

" List chars
set listchars=""                  " Reset the listchars		
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."		
set listchars+=trail:.            " show trailing spaces as dots

""" Searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter

""
"" cmdline completion
""
set wildmode=list:longest   "make cmdline tab completion similar to bash

"" My mappings
""
nnoremap <F2> :Explore .<ENTER>
nnoremap <F3> :nohls<ENTER>
nnoremap <F4> :Gstatus<ENTER>
nnoremap <F5> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
inoremap <F5> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
nnoremap <F6> :.w !pbcopy<CR><CR>
vnoremap <F6> :w !pbcopy<CR><CR>
nnoremap <F7> :diffget //2<CR>
nnoremap <F8> :diffupdate<CR>
nnoremap <F9> :diffget //3<CR>

noremap ;; :%s:::g<Left><Left><Left>
noremap ;' :%s:::cg<Left><Left><Left><Left>

nnoremap ; :

" make Y consistent with C and D
nnoremap Y y$

" TextMate like shortcuts

"  CTRL+L = =>
inoremap <C-L> <SPACE>=><SPACE>

" this works just as META+ENTER in textmate
inoremap <S-CR> <ESC>o

" F12 uses Tidy
map <F12> :%!tidy -q --tidy-mark 0 2>/dev/null<CR>

let g:AutoCloseProtectedRegions = ["Comment", "String", "Character"]
