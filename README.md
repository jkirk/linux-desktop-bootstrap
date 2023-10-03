# Linux Desktop Bootstrap

Make your GNU/Linux Debian Desktop usable.

## Requirements

* busybox

or:

* wget
* unzip

## Usage

We assume a very minimal Linux Desktop system.

```sh
❯ mkdir linux-desktop-bootstrap
❯ busybox https://github.com/jkirk/linux-desktop-bootstrap/archive/refs/reads/main.zip -O - | busybox unzip -j -
❯ ./linux-desktop-bootstrap.sh
```

If you have wget and unzip installed and do not want to use busybox, run:

```sh
❯ wget https://github.com/jkirk/linux-desktop-bootstrap/archive/refs/reads/main.zip
❯ unzip main.zip
❯ cd linux-desktop-bootstrap
❯ ./linux-desktop-bootstrap.sh
```

Note, that unzip does not support stdin as input. You have to download the zip file first.

## FAQ

### busybox is not installed. What shall I do?

If busybox is not really not installed, run this:

```sh
❯ sudo apt install busybox
```
