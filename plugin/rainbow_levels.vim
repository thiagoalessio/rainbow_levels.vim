if !exists('g:rainbow_levels')
	let g:rainbow_levels = [
		\{'ctermfg': 2, 'guifg': 'green'  },
		\{'ctermfg': 6, 'guifg': 'cyan'   },
		\{'ctermfg': 4, 'guifg': 'blue'   },
		\{'ctermfg': 5, 'guifg': 'magenta'},
		\{'ctermfg': 1, 'guifg': 'red'    },
		\{'ctermfg': 3, 'guifg': 'yellow' },
		\{'ctermfg': 7, 'guifg': 'white'  },
		\{'ctermfg': 0, 'guifg': 'gray'   }]
endif

com! RainbowLevelsToggle call rainbow_levels#toggle()
com! RainbowLevelsOn     call rainbow_levels#on()
com! RainbowLevelsOff    call rainbow_levels#off()
