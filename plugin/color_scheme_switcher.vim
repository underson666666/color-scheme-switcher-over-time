if exists('g:loaded_color_scheme_switcher')
    finish
endif
let g:loaded_color_scheme_switcher = 1

command! ColorSchemeSwitcher call color_scheme_switcher#StartColorSchemeSwitcher()
