# Notes
In this `.md` file, I prefer to note some packages used in the neovim
configureation.  
* The packages are managed through [`packer`](https://github.com/wbthomason/packer.nvim)  

* Install the [`popup.nvim`](https://github.com/nvim-lua/popup.nvim) which
  allows to have a floating window.  
  Especially, we could see what is going on with `packer`.
* Maybe the functions of `let g:*` could be convert to `vim.g.*` in lua

## [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)
* it's no need `mathjax-support-for-mkdp` plugin for typesetting math
  equations
* Install with `packer.nvim`
* Configurable with `vim.g.*`

## [dracula.nvim](https://github.com/Mofiqul/dracula.nvim)
* The configuration must be run before `colorscheme` command to take effect.

## [vimtex](https://github.com/lervag/vimtex)
* The default compiler backend relies on
  [`latexmk`](https://mg.readthedocs.io/latexmk.html). Users are encouraged
  to read the requirements section in the documentation (:h
  vimtex-requirements).
* To install `latexmk` on MacOS: `sudo tlmgr install latexmk`
* The different latex relies could be found at [TeX Live
  unity](https://amaxwell.github.io/tlutility/)
* `dbus` is needed to work properly:  
    * Install: `brew install dbus`
    * Add `export DBUS_SESSION_BUS_ADDRESS="unix:path=$DBUS_LAUNCHD_SESSION_BUS_SOCKET"` to `.zshrc` or `.bashrc`  
    * Changed the value of `<auth><\auth>` in
      `/usr/local/opt/dbus/share/dbus-1/session.conf` from `EXTERNAL` into
      `DBUS_COOKIE_SHA1`

