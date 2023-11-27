# Epitech Header For Neovim

This is a epitech header module for respect epitech coding style


## Installation

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
  use { 'AntoninMiranda/epitech_header.nvim' }
```

### [lazy.nvim] (https://github.com/folke/lazy.nvim)

```lua
  'AntoninMiranda/epitech_header.nvim',
```


## Config Example

```lua
local status_ok, header = pcall(require, "epitech_header")
if not status_ok then
    return
end

header.setup({
    name = {
        "The name you choce"
    }
})
```


## Usage

in your file exec this command

```vim
:Header
```
