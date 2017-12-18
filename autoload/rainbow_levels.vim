func! rainbow_levels#toggle()
    if rainbow_levels#is_on()
        call rainbow_levels#off()
    else
        call rainbow_levels#on()
    endif
endfunc

func! rainbow_levels#on()
    let w:rainbow_levels_match_ids = []
    call rainbow_levels#load_colors()

    for l:level in range(0, len(g:rainbow_levels)-1)
        call rainbow_levels#match_level(l:level)
    endfor
endfunc

func! rainbow_levels#off()
    while rainbow_levels#is_on()
        silent! call matchdelete(remove(w:rainbow_levels_match_ids, -1))
    endwhile
endfunc

func! rainbow_levels#is_on()
    return exists('w:rainbow_levels_match_ids')
      \ && !empty(w:rainbow_levels_match_ids)
endfunc

func! rainbow_levels#load_colors()
    for color in g:rainbow_levels
        exe rainbow_levels#get_highlight_command(color)
    endfor
endfunc

func! rainbow_levels#get_highlight_command(color)
    let l:command = 'hi RainbowLevel'.index(g:rainbow_levels, a:color)

    for property in ['ctermbg', 'ctermfg', 'guibg', 'guifg']
        if has_key(a:color, property)
          let l:command.= ' '.property.'='.a:color[property]
        endif
    endfor

    return l:command
endfunc

func! rainbow_levels#match_level(level)
    let l:group   = 'RainbowLevel'.a:level
    let l:pattern = rainbow_levels#get_pattern(a:level) 
    call add(w:rainbow_levels_match_ids, matchadd(l:group, l:pattern))
endfunc

func! rainbow_levels#get_pattern(level)
    if rainbow_levels#is_indented_with_tabs()
        return '^\t\{'.a:level.'}\S.*$'
    else
        let l:start = a:level * rainbow_levels#get_indent_size()
        let l:end   = l:start + rainbow_levels#get_indent_size() - 1
        return '^ \{'.l:start.','.l:end.'}\S.*$'
    endif
endfunc

func! rainbow_levels#get_indent_size()
    return rainbow_levels#is_indented_with_tabs() ? &l:tabstop : &l:shiftwidth
endfunc

func! rainbow_levels#is_indented_with_tabs()
    return &l:shiftwidth <= 0 || !&l:expandtab
endfunc
