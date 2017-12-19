<img src="https://thiagoalessio.ams3.digitaloceanspaces.com/rainbow_levels/logo.png" alt="rainbow_levels.vim" align="right" width="150px"/>

# Rainbow Levels

A different approach to code highlighting.

[![Join the chat][gitter_badge]][gitter]
[![License: MIT][license_badge]][mit_license]

This plugin highlights your code by indentation level, instead of language syntax.<br/>
It is specially useful when dealing with deeply nested code, callback hells, etc.

## Screenshot

![Rainbow Levels Screenshot](https://thiagoalessio.ams3.digitaloceanspaces.com/rainbow_levels/screenshot.png)

> <https://github.com/jquery/jquery/blob/e84d3bc02eddeb0e0ca0438952ac560a794ff463/src/data/Data.js>

## Usage

This plugin exposes three self-explanatory commands:

* `:RainbowLevelsToggle`
* `:RainbowLevelsOn`
* `:RainbowLevelsOff`

And you can use them in a variety of ways, for example:

```vim
" Creating a mapping to turn it on and off:
map <leader>l :RainbowLevelsToggle<cr>

" Or automatically turning it on for certain file types:
au FileType javascript,python,php,xml,yaml :RainbowLevelsOn
```

In addition to the commands mentioned above, it also exposes a global variable
`g:rainbow_levels` that can be [overridden][] to change the highlight color of
each level.

## Themes

It looks much better if the colors match the current colorscheme, so to save
you some time, here is a list of `g:rainbow_levels` values for some popular
colorschemes.

<img align="right" width="50%" title="Jellybeans Theme" src="https://thiagoalessio.ams3.digitaloceanspaces.com/rainbow_levels/theme-jellybeans.png"/>

### [Jellybeans][]

```vim
let g:rainbow_levels = [
    \{'ctermfg': 121, 'guifg': '#65c254'},
    \{'ctermfg': 81,  'guifg': '#8fbfdc'},
    \{'ctermfg': 11,  'guifg': '#8197bf'},
    \{'ctermfg': 14,  'guifg': '#c6b6ee'},
    \{'ctermfg': 13,  'guifg': '#cf6a4c'},
    \{'ctermfg': 121, 'guifg': '#ffb964'},
    \{'ctermfg': 7,   'guifg': '#e8e8d3'},
    \{'ctermfg': 14,  'guifg': '#888888'}]
```

<br/><br/>

<img align="right" width="50%" title="Zenburn Theme" src="https://thiagoalessio.ams3.digitaloceanspaces.com/rainbow_levels/theme-zenburn.png"/>

### [Zenburn][]

```vim
let g:rainbow_levels = [
    \{'ctermfg': 108, 'guifg': '#7f9f7f'},
    \{'ctermfg': 116, 'guifg': '#8cd0d3'},
    \{'ctermfg': 109, 'guifg': '#9fafaf'},
    \{'ctermfg': 174, 'guifg': '#cc9393'},
    \{'ctermfg': 223, 'guifg': '#ffd7a7'},
    \{'ctermfg': 228, 'guifg': '#efef8f'},
    \{'ctermfg': 230, 'guifg': '#f0efd0'},
    \{'ctermfg': 240, 'guifg': '#5b605e'}]
```

<br/><br/>

<img align="right" width="50%" title="Solarized Theme" src="https://thiagoalessio.ams3.digitaloceanspaces.com/rainbow_levels/theme-solarized.png"/>

### [Solarized][]

```vim
let g:rainbow_levels = [
    \{'ctermfg': 2, 'guifg': '#859900'},
    \{'ctermfg': 6, 'guifg': '#2aa198'},
    \{'ctermfg': 4, 'guifg': '#268bd2'},
    \{'ctermfg': 5, 'guifg': '#6c71c4'},
    \{'ctermfg': 1, 'guifg': '#dc322f'},
    \{'ctermfg': 3, 'guifg': '#b58900'},
    \{'ctermfg': 8, 'guifg': '#839496'},
    \{'ctermfg': 7, 'guifg': '#586e75'}]
```

<br/><br/>

<img align="right" width="50%" title="Dracula Theme" src="https://thiagoalessio.ams3.digitaloceanspaces.com/rainbow_levels/theme-dracula.png"/>

### [Dracula][]

```vim
let g:rainbow_levels = [
    \{'ctermfg': 84,  'guifg': '#50fa7b'},
    \{'ctermfg': 117, 'guifg': '#8be9fd'},
    \{'ctermfg': 61,  'guifg': '#6272a4'},
    \{'ctermfg': 212, 'guifg': '#ff79c6'},
    \{'ctermfg': 203, 'guifg': '#ffb86c'},
    \{'ctermfg': 228, 'guifg': '#f1fa8c'},
    \{'ctermfg': 15,  'guifg': '#f8f8f2'},
    \{'ctermfg': 231, 'guifg': '#525563'}]
```

<br/><br/>

<img align="right" width="50%" title="Monokai Theme" src="https://thiagoalessio.ams3.digitaloceanspaces.com/rainbow_levels/theme-monokai.png"/>

### [Monokai][]

```vim
let g:rainbow_levels = [
    \{'ctermfg': 2, 'guifg': '#a6e22e'},
    \{'ctermfg': 6, 'guifg': '#66d9ef'},
    \{'ctermfg': 4, 'guifg': '#ae81ff'},
    \{'ctermfg': 5, 'guifg': '#f92672'},
    \{'ctermfg': 1, 'guifg': '#fd971f'},
    \{'ctermfg': 3, 'guifg': '#f4bf75'},
    \{'ctermfg': 7, 'guifg': '#f8f8f2'},
    \{'ctermfg': 0, 'guifg': '#75715e'}]
```

<br/><br/>

<img align="right" width="50%" title="Birds of Paradise Theme" src="https://thiagoalessio.ams3.digitaloceanspaces.com/rainbow_levels/theme-birds-of-paradise.png"/>

### [Birds of Paradise][]

```vim
let g:rainbow_levels = [
    \{'ctermfg': 185, 'guifg': '#d9d762'},
    \{'ctermfg': 109, 'guifg': '#86b4bb'},
    \{'ctermfg': 67,  'guifg': '#6c99bb'},
    \{'ctermfg': 98,  'guifg': '#8856d2'},
    \{'ctermfg': 203, 'guifg': '#ef5d32'},
    \{'ctermfg': 215, 'guifg': '#efac32'},
    \{'ctermfg': 188, 'guifg': '#e6e1c4'},
    \{'ctermfg': 59,  'guifg': '#6b4e32'}]
```

<br/><br/>

## Customization

It doesn't need to look like a rainbow, you can go **crazy** on how you want
to have it colored.

**Note:** The only limitation at the moment is that you can't repeat colors;
Every entry on `g:rainbow_levels` should be unique.

<img align="right" width="50%" title="Shades of Blue" src="https://thiagoalessio.ams3.digitaloceanspaces.com/rainbow_levels/example-shades-of-blue.png"/>

### Shades of Blue

```vim
let g:rainbow_levels = [
    \{'ctermfg': 51, 'guifg': '#00ffff'},
    \{'ctermfg': 45, 'guifg': '#00d7ff'},
    \{'ctermfg': 39, 'guifg': '#00afff'},
    \{'ctermfg': 33, 'guifg': '#0087ff'},
    \{'ctermfg': 27, 'guifg': '#005fff'},
    \{'ctermfg': 21, 'guifg': '#0000ff'},
    \{'ctermfg': 20, 'guifg': '#0000d7'},
    \{'ctermfg': 19, 'guifg': '#0000af'},
    \{'ctermfg': 18, 'guifg': '#000087'},
    \{'ctermfg': 17, 'guifg': '#00005f'}]
```

<br/><br/>

## Want to keep syntax highlight?

No problem! You can change just the background colors instead.

<img align="right" width="50%" title="Shades of Gray BG" src="https://thiagoalessio.ams3.digitaloceanspaces.com/rainbow_levels/example-shades-of-gray-bg.png"/>

### Shades of Gray (Background)

```vim
let g:rainbow_levels = [
    \{'ctermbg': 232, 'guibg': '#080808'},
    \{'ctermbg': 233, 'guibg': '#121212'},
    \{'ctermbg': 234, 'guibg': '#1c1c1c'},
    \{'ctermbg': 235, 'guibg': '#262626'},
    \{'ctermbg': 236, 'guibg': '#303030'},
    \{'ctermbg': 237, 'guibg': '#3a3a3a'},
    \{'ctermbg': 238, 'guibg': '#444444'},
    \{'ctermbg': 239, 'guibg': '#4e4e4e'},
    \{'ctermbg': 240, 'guibg': '#585858'}]
```

<br/><br/>

<img align="right" width="50%" title="Rainbow BG" src="https://thiagoalessio.ams3.digitaloceanspaces.com/rainbow_levels/example-rainbow-bg.png"/>

### Rainbows (Background)

```vim
let g:rainbow_levels = [
    \{'ctermbg': 222, 'guibg': '#ffd787'},
    \{'ctermbg': 223, 'guibg': '#ffd7af'},
    \{'ctermbg': 230, 'guibg': '#ffffd7'},
    \{'ctermbg': 193, 'guibg': '#d7ffaf'},
    \{'ctermbg': 195, 'guibg': '#d7ffff'},
    \{'ctermbg': 189, 'guibg': '#d7d7ff'},
    \{'ctermbg': 225, 'guibg': '#ffd7ff'},
    \{'ctermbg': 224, 'guibg': '#ffd7d7'}]
```

<br/><br/>

<img align="right" width="50%" title="Level Alert" src="https://thiagoalessio.ams3.digitaloceanspaces.com/rainbow_levels/example-level-alert.png"/>

### Level "Alert"

```vim
let g:rainbow_levels = [
    \{'ctermbg': 'none', 'level': 0},
    \{'ctermbg': 'none', 'level': 1},
    \{'ctermbg': 'none', 'level': 2},
    \{'ctermbg': 'none', 'level': 3},
    \
    \{'ctermbg': 3,   'guibg': '#ffc66d'},
    \{'ctermbg': 9,   'guibg': '#cc7833'},
    \{'ctermbg': 1,   'guibg': '#da4939'},
    \{'ctermbg': 160, 'guibg': '#870000'}]
```

<br/><br/>

## Special Thanks

_(I'm asking permission to list their names here, come back soon ;D)_

## Where to get help

Join the chat at <https://gitter.im/thiagoalessio/rainbow_levels.vim>

## License

rainbow_levels.vim is released under the [MIT License][].

[gitter_badge]: https://badges.gitter.im/thiagoalessio/rainbow_levels.vim.svg
[gitter]: https://gitter.im/thiagoalessio/rainbow_levels.vim?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge
[license_badge]: https://img.shields.io/badge/License-MIT-yellow.svg
[mit_license]: https://opensource.org/licenses/MIT
[Jellybeans]: https://github.com/nanotech/jellybeans.vim
[Zenburn]: http://kippura.org/zenburnpage/
[Solarized]: http://ethanschoonover.com/solarized
[Dracula]: https://draculatheme.com/
[Monokai]: http://www.monokai.nl/
[Birds of Paradise]: http://joebergantine.com/
[overridden]: https://github.com/thiagoalessio/rainbow_levels.vim#customization
[MIT License]: https://github.com/thiagoalessio/rainbow_levels.vim/blob/master/MIT-LICENSE
