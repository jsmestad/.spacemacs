# Installation Guide

## Fonts

Two fonts are suggested to use with emacs, you can install one or both:

* [Hack](https://github.com/source-foundry/Hack#user-content-quick-installation)
* [Source Code Pro](https://github.com/adobe-fonts/source-code-pro/releases/latest)

## Required Libraries

### System

```
brew install git # surprised if you don't already have this installed
brew install ispell # for spell checking, if enabled
brew install ag # for searching, used by helm-ag
brew install pt # for searching, recommended over Ag
```

### Node.JS

You may already have Node.JS installed, if you don't run the following shell commands:

```
brew install node
npm install npm@latest -g

npm install -g tern # needed for javascript auto-completion
npm install -g eslint # needed for JavaScript error checking
```

### Ruby

```
gem install rubocop # needed for Ruby static-analysis
```

## Clone Spacemacs

We are going to use the `develop` version of Spacemacs in this tutorial. If you want to use master,
you may have issues with the configuration in this repository.

```
git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d
```

## Install our configuration

```
git clone git@github.com:homebotapp/.spacemacs.git ~/.spacemacs.d
```

## Install Emacs.app

### OSX

```
brew tap d12frosted/emacs-plus
brew install emacs-plus --with-natural-title-bar
```

#### Dock Shortcut

In your command line, launch a session of Emacs by typing `emacs` then hitting Enter. Once open, find
the Emacs.app icon in your OSX Dock and right-click it. Go to "Options -> Save To Dock". This provides
an easy way to launch Emacs in the future.

### Linux

Use the emacs package supplied by your distribution. For example on Fedora, `sudo dnf install emacs`.
