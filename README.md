After [installation guide](https://wiki.archlinux.org/index.php/Installation_guide), login as root.

Use the [following guide](https://wiki.archlinux.org/index.php/Dhcpcd#/etc/resolv.conf) to add `8.8.8.8` and `8.8.4.4` into `/etc/resolv.conf`.

Install `sudo` and `openssh`:
```
pacman -S sudo openssh python
systemctl enable sshd.service
```

Create a new user called `<username>`:
```
useradd -m <username>
passwd <username>
```

Add `<username>` to `sudoers` using the `visudo` command and append the following
```
<username> ALL=(ALL) ALL
```

## On another machine

```
export PUBKEY_PATH=$HOME/.ssh/id_rsa.pub
export PRIVKEY_PATH=$HOME/.ssh/id_rsa
export USERNAME=<username>
export IPADDR=192.168.0.123
make setup_ssh
make install
```
