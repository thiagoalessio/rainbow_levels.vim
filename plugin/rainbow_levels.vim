let g:rainbow_levels = [
    \{'ctermfg': 'DarkGreen',   'guifg': 'DarkGreen'  },
    \{'ctermfg': 'DarkCyan',    'guifg': 'DarkCyan'   },
    \{'ctermfg': 'DarkBlue',    'guifg': 'DarkBlue'   },
    \{'ctermfg': 'DarkMagenta', 'guifg': 'DarkMagenta'},
    \{'ctermfg': 'DarkRed',     'guifg': 'DarkRed'    },
    \{'ctermfg': 'White',       'guifg': 'White'      },
    \{'ctermfg': 'DarkGray',    'guifg': 'DarkGray'   }]

com! RainbowLevelsToggle call rainbow_levels#toggle()
com! RainbowLevelsOn     call rainbow_levels#on()
com! RainbowLevelsOff    call rainbow_levels#off()
