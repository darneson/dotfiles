let g:airline#themes#molokai#palette = {}

let g:airline#themes#molokai#palette.accents = {
      \ 'red': [ '#bf616a' , '' , 5 , '' , '' ],
      \ }


" Normal mode
let s:N1 = [ '#88c0d0' , '#d8dee9' , 0 , 6 ] " mode
let s:N2 = [ '#4c566a' , '#d8dee9' , 15 , 8  ] " info
let s:N3 = [ '#f8f8f0' , '#465457' , 15 , 0  ] " statusline

let g:airline#themes#molokai#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#molokai#palette.normal_modified = {
      \ 'airline_c': [ '#080808' , '#e6db74' , 11, 0 , '' ] ,
      \ }


" Insert mode
let s:I1 = [ '#080808' , '#66d9ef' , 0 ,  2 ]
let s:I2 = [ '#f8f8f0' , '#232526' , 15 , 8 ]
let s:I3 = [ '#f8f8f0' , '#465457' , 15 , 0 ]

let g:airline#themes#molokai#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#molokai#palette.insert_modified = {
      \ 'airline_c': [ '#080808' , '#66d9ef' , 11 , 0 , '' ] ,
      \ }


" Replace mode
let g:airline#themes#molokai#palette.replace = copy(g:airline#themes#molokai#palette.insert)
let g:airline#themes#molokai#palette.replace.airline_a = [ s:I1[0]   , '#ef5939' , s:I1[2] , 166     , ''     ]
let g:airline#themes#molokai#palette.replace_modified = {
      \ 'airline_c': [ '#080808' , '#ef5939' , 11 , 0 , '' ] ,
      \ }


" Visual mode
let s:V1 = [ '#080808' , '#fd971f' , 0 , 11 ]
let s:V2 = [ '#f8f8f0' , '#232526' , 15 , 8  ]
let s:V3 = [ '#f8f8f0' , '#465457' , 15 , 0  ]

let g:airline#themes#molokai#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#molokai#palette.visual_modified = {
      \ 'airline_c': [ '#080808' , '#fd971f' , 11 , 0 , '' ] ,
      \ }


" Inactive
let s:IA = [ '#1b1d1e' , '#465457' , 8 , 0 , '' ]
let g:airline#themes#molokai#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#molokai#palette.inactive_modified = {
      \ 'airline_c': [ '#f8f8f0' , ''        , 253 , ''  , '' ] ,
      \ }


" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#molokai#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#f8f8f0' , '#465457' , 253 , 67  , ''     ] ,
      \ [ '#f8f8f0' , '#232526' , 253 , 16  , ''     ] ,
      \ [ '#080808' , '#e6db74' , 232 , 144 , 'bold' ] )

