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

## Where to get help

Join the chat at <https://gitter.im/thiagoalessio/rainbow_levels.vim>

## License

rainbow_levels.vim is released under the [MIT License][].

[gitter_badge]: https://badges.gitter.im/thiagoalessio/rainbow_levels.vim.svg
[gitter]: https://gitter.im/thiagoalessio/rainbow_levels.vim?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge
[license_badge]: https://img.shields.io/badge/License-MIT-yellow.svg
[mit_license]: https://opensource.org/licenses/MIT
[MIT License]: https://github.com/thiagoalessio/rainbow_levels.vim/blob/master/MIT-LICENSE
