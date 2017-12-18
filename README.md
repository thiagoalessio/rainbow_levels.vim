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
`g:rainbow_levels` that can be overridden to change the highlight color of each
level.

By default there are only 8 different levels, but feel free to add as many as
you need, the plugin takes into account the amount of entries on `g:rainbow_levels`.

## Themes

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

<br/><br/><br/>
---

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

<br/><br/><br/>
---

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

<br/><br/><br/>
---

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

<br/><br/><br/>

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
[MIT License]: https://github.com/thiagoalessio/rainbow_levels.vim/blob/master/MIT-LICENSE
