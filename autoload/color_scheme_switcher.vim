function! SwitchColorSchemeTimer(timer) abort
    call SwitchColorScheme()
endfunction

function! SwitchColorScheme() abort
    for k in sort(keys(g:color_scheme_switcher#colors), "N")
        let time = GetDatetime(k)
        let now = strftime("%Y-%m-%d %H:%M:%S", localtime())
        if time > now
            break
        endif
        let hour = k
    endfor

    if !exists("g:colors_name") || g:colors_name != g:color_scheme_switcher#colors[hour]
        exec "colorscheme ".g:color_scheme_switcher#colors[hour]
    endif
    if exists("g:color_scheme_switcher#backgruonds[hour]")
        exec "set bg=".g:color_scheme_switcher#backgruonds[hour]
    endif
endfunction

function! GetDatetime(hour) abort
    let now = localtime()
    let l:year = strftime("%Y")
    let l:month = strftime("%m")
    let l:day = strftime("%d")
    let l:timeStr = "%Y-%m-%d " . a:hour
    let l:time = strftime(timeStr, localtime())
    return time
endfunction

function! StopSwitchColorSchemeTimer() abort
    if exists("g:color_scheme_switcher#timer")
        call timer_stop(g:color_scheme_switcher#timer)
    endif
endfunction

function! SetSwitchColorSchemeDefaultSetting() abort
    if !exists("g:color_scheme_switcher#interval")
        let g:color_scheme_switcher#interval = 1000 * 10
    endif
    if !exists("g:color_scheme_switcher#colors")
        echo "Not defined 'g:color_scheme_switcher#colors'"
        finish
    endif
endfunction

function! color_scheme_switcher#StartColorSchemeSwitcher() abort
    call SetSwitchColorSchemeDefaultSetting()
    call StopSwitchColorSchemeTimer()
    call SwitchColorScheme()
    let g:color_scheme_switcher#timer = timer_start(g:color_scheme_switcher#interval, function("SwitchColorSchemeTimer"), {"repeat": -1})
endfunction
