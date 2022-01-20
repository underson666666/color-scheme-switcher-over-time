if exists('g:loaded_color_scheme_switcher')
    finish
endif
let g:loaded_color_scheme_switcher = 1

command! ColorSchemeSwitcherStart call color_scheme_switcher#StartColorSchemeSwitcher()
command! ColorSchemeSwitcherStop call color_scheme_switcher#StartColorSchemeSwitcherStop()
command! ColorSchemeSwitcherStatus call color_scheme_switcher#StartColorSchemeSwitcherStatus()

