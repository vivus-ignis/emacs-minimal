# emacs-minimal

## How to install

[stow](https://www.gnu.org/software/stow/) is assumed to be installed
beforehand. It is available on [linuxbrew](https://linuxbrew.sh/).

```sh
mkdir $HOME/src
cd !$
git clone https://github.com/vivus-ignis/emacs-minimal.git
cd
stow -d src -t $HOME emacs-minimal
```

## Note for Windows users

[Do not](https://emacs.stackexchange.com/questions/27420/fixing-keybindings-of-emacs-inside-putty-on-windows) use [PuTTY](https://www.emacswiki.org/emacs/PuTTY). [Mintty](http://mintty.github.io/) + openssh seem to work much better.
