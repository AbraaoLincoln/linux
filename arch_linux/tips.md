# Progrmas to install when doing the instalation

- networkmanager

- git

- nano

- vim

- man-db

- xterm

- base-devel

- sudo

## command

```
pacman -S networkmanager git nano vim man-db xterm base-devel sudo
```

## enable networkmanager

```
systemctl enable NetworkManager
```

## create user and enable sudo for it

```
useradd username
passwd username

usermod -aG wheel,audio,video,optical,storage username

EDITOR=nano visudo
```