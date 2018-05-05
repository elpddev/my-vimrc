# myvimrc
A `my vimrc` site

## How to Use

In order to make Vim use the custom vimrc file, you can put a line on `~/.vimrc` that reads this custom vimrc file.

```
source ~/projects/myvimrc/.vimrc
```

## Preinstallation

In order to fix error "Unable to open swap file for "{filename}", recovery impossible", we need to open vim in a folder that it has access to.

### Edit in .vimrc
```
set directory=~/tmp/vim-swap
```

### Run
```
mkdir -p ~/tmp/vim-swap
```
