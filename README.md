# color-scheme-switcher-over-time

This is vim colorscheme manager plugin.
It's can switch colorscheme over time.

## Installation

Using the [vim-plug](https://github.com/junegunn/vim-plug) plugin manager:
```
Plug 'underson666666/color_scheme_switcher'

```
You need to have your favorite color schema installed.

## Usage
```
# Start Switcher
:ColorSchemeSwitcherStart
# Stop Switcher
:ColorSchemeSwitcherStop
# Confirm Switcher is running
:ColorSchemeSwitcherStatus
```

## Settings

### ColorScheme and Background

In this example, you will use github after 8 o'clock and night-owl after 17:30.

```
# Required settings is this.
# key is hour, and value is colorscheme.
let g:color_scheme_switcher#colors = { "0": "night-owl", "08": "github", "17:30": "night-owl"}

# These are optioanl settings.
# key is hour, and value is background.
let g:color_scheme_switcher#backgruonds = { "0": "dark", "08": "light", "18:30": "dark"}
# This is interval. Default is 60 sec. This exmaple is 5 sec.
let g:color_scheme_switcher#interval = 1000 * 5
```

### Automatic startup

```
if has('vim_starting')
    call color_scheme_switcher#StartColorSchemeSwitcher()
endif
```
