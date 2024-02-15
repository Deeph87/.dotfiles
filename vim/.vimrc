" Active la coloration syntaxique
syntax on

" Active le clique à la souris
set mouse=a

" Je ne sais plus
set showmatch

" Active les numéros de lignes
set number

" Active les numéros de lignes relatifs à la position du curseur
set relativenumber

" Autorise la suppression
set backspace=indent,eol,start

" Active un theme custom
colorscheme jellybeans


"" Vim Airline


" Affiche une barre d'onglets des buffers
let g:airline#extensions#tabline#enabled = 1

" Titre des buffers : uniquement le nom du fichier
let g:airline#extensions#tabline#formatter = 'unique_tail'


"" Netrw


" Permet de déplacer des fichiers dans les dossiers parents
let g:netrw_keepdir = 0

" Largeur de la fenêtre
let g:netrw_winsize = 25

" Cache la bannière supérieur
let g:netrw_banner = 0

" La commande copie par défaut devient récursive
let g:netrw_localcopydircmd = 'cp -r'

