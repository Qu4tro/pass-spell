<h1 align="center">pass spell</h1>

</p>
<p align="center">
A <a href="https://www.passwordstore.org/">pass</a> extension for your ears.
</p>

## Description
`pass spell` extends pass with a spell subcommand that spells you aloud any secrets you may have encrypted.


```bash
$ pass spell dir/secret
  <sound-playing>
```

## Usage
```
Usage: pass spell pass-name <nato-spell-options>
```

## Installation

**Requirements**
* `pass 1.7.0` or greater.
* [nato-spell](https://pypi.org/project/nato-spell/)

**ArchLinux**

`pass-spell` is available in the [Arch User Repository](http://aur.archlinux.org/).
```sh
yay -S pass-spell-git  # or your preferred AUR install method
```

**From git**
```sh
git clone https://github.com/Qu4tro/pass-spell/
cd pass-spell
sudo make install  # For OSX: make install PREFIX=/usr/local
```

## Contribution
Feedback, contributors, pull requests are all very welcome.
