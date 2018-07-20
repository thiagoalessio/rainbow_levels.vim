com! RainbowLevelsOn     call rainbow_levels#on()
com! RainbowLevelsOff    call rainbow_levels#off()
com! RainbowLevelsToggle call rainbow_levels#toggle()

let s:colors_dir  = resolve(expand('<sfile>:p:h:h').'/default_colors')
let s:colors_name = get(g:, 'colors_name', 'default')
let s:colors_file = resolve(expand(s:colors_dir.'/'.s:colors_name.'.vim'))

if empty(glob(s:colors_file))
	let s:colors_file = resolve(expand(s:colors_dir.'/default.vim'))
endif

exe 'source '.s:colors_file
