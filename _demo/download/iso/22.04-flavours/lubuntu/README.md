
# Download ISO / Lubuntu


## Link

* https://cdimage.ubuntu.com/
* https://cdimage.ubuntu.com/lubuntu/releases/22.04/release/
* https://cdimage.ubuntu.com/lubuntu/releases/jammy/release/
* [How to verify your Ubuntu download](https://ubuntu.com/tutorials/how-to-verify-ubuntu#1-overview)


## Prepare

run

``` sh
make prepare
```


## Download

run

``` sh
make download
```


## Boot

run

``` sh
make boot
```


## Mount

run

``` sh
make mount
```

run

``` sh
tree iso-root
```

run

``` sh
tree live-root
```


## Unmount

run

``` sh
make unmount
```


## Extract initrd

run

``` sh
make initrd-extract
```

## Clean

run

``` sh
make clean
```
