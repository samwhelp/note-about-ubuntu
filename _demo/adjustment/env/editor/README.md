
# Default Editor

## Link

* [http://samwhelp.github.io/blog/read/linux/ubuntu/editor/select-editor/](http://samwhelp.github.io/blog/read/linux/ubuntu/editor/select-editor/)

## Config


``` sh
sudo update-alternatives --config editor
```

``` sh
sudo update-alternatives --set editor /bin/nano
```

``` sh
update-alternatives --set editor /usr/bin/vim.tiny
```

``` sh
update-alternatives --set editor /usr/bin/vim.basic
```

``` sh
update-alternatives --set editor /usr/bin/nvim
```

## Test

``` sh
editor
```

``` sh
sensible-editor
```
