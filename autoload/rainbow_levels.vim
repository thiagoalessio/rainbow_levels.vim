func! rainbow_levels#toggle() abort
	if rainbow_levels#is_on()
		call rainbow_levels#off()
	else
		call rainbow_levels#on()
	endif
endfunc

func! rainbow_levels#on() abort
	let w:rainbow_levels_match_ids = []
	call rainbow_levels#load_colors()

	for l:level in range(0, len(g:rainbow_levels)-1)
		call rainbow_levels#match_level(l:level)
	endfor
endfunc

func! rainbow_levels#off() abort
	while rainbow_levels#is_on()
		silent! call matchdelete(remove(w:rainbow_levels_match_ids, -1))
	endwhile
endfunc

func! rainbow_levels#is_on() abort
	return exists('w:rainbow_levels_match_ids')
				\ && !empty(w:rainbow_levels_match_ids)
endfunc

func! rainbow_levels#load_colors() abort
	let l:color_index = 0
	while l:color_index < len(g:rainbow_levels)
		let l:color = g:rainbow_levels[l:color_index]
		exe rainbow_levels#get_highlight_command(l:color, l:color_index)
		let l:color_index += 1
	endwhile
endfunc

func! rainbow_levels#get_highlight_command(color, color_index) abort
	let l:command = 'hi RainbowLevel'.a:color_index

	for l:property in ['ctermbg', 'ctermfg', 'guibg', 'guifg']
		if has_key(a:color, l:property)
			let l:command.= ' '.l:property.'='.a:color[l:property]
		endif
	endfor

	return l:command
endfunc

func! rainbow_levels#match_level(level) abort
	let l:group   = 'RainbowLevel'.a:level
	let l:pattern = rainbow_levels#get_pattern(a:level)
	call add(w:rainbow_levels_match_ids, matchadd(l:group, l:pattern, -10))
endfunc

func! rainbow_levels#get_pattern(level) abort
	if rainbow_levels#is_indented_with_softtabstop()
		let l:size = a:level * rainbow_levels#get_indent_size()
		let l:tab_level = l:size / &l:tabstop
		let l:space_level = l:size % &l:tabstop

		return '^\t\{'.l:tab_level.'} \{'.l:space_level.',}\S.*$'
	elseif rainbow_levels#is_indented_with_tabs()
		return '^\t\{'.a:level.'}\ *\S.*$'
	else
		let l:start = a:level * rainbow_levels#get_indent_size()
		let l:end   = l:start + rainbow_levels#get_indent_size() - 1
		return '^ \{'.l:start.','.l:end.'}\S.*$'
	endif
endfunc

func! rainbow_levels#get_indent_size() abort
	if rainbow_levels#is_indented_with_tabs()
		return &l:softtabstop ? &l:softtabstop : &l:tabstop
	endif
	return &l:shiftwidth
endfunc

func! rainbow_levels#is_indented_with_tabs() abort
	return &l:shiftwidth <= 0 || !&l:expandtab
endfunc

func! rainbow_levels#is_indented_with_softtabstop() abort
	return &l:softtabstop > 0 && !&l:expandtab
endfunc
