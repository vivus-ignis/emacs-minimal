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
