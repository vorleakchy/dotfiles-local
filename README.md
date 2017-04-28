vorleakchy dotfiles
===================

I use [thoughtbot/dotfiles](https://github.com/thoughtbot/dotfiles) as the
foundation of my personal configuration. These files are the `.local`
modifications that build on top of the foundation.

Requirements
------------

Set zsh as my login shell.

    chsh -s /bin/zsh

Install [rcm](https://github.com/thoughtbot/rcm).

    brew tap thoughtbot/formulae
    brew install rcm

Install
-------

Clone onto my laptop:

    git clone git://github.com/vorleakchy/dotfiles-local.git

Install:

    env RCRC=$HOME/dev/dotfiles/rcrc rcup

This will create symlinks for config files in my home directory.

I can safely run `rcup` multiple times to update.

What's in it?
-------------

[git](http://git-scm.com/) configuration:

* `l` alias for tight, colored, log output.
* `ll` alias for tight, colored, graph, log output.

[zsh](http://zsh.sourceforge.net/FAQ/zshfaq01.html) configuration and aliases:

* `q` to exit.
* `dev` to go to my `dev` folder.
* `...` to go to two upper levels of folder.
* `todo` to edit my plain text todo file, located in Dropbox.
* `z` to reload ZSH.
* `gsh` to run `gitsh`
* `localip` to see my local IP address.
* `pubip` to see my public IP address.
* `pubkey` to copy my public key to the pasteboard.
* `rc` to run `rails console`

Credits
-------
[Thoughtbot](http://thoughtbot.com).

[Chris Toomey](https://github.com/christoomey)

[Geoff Harcourt](https://github.com/geoffharcourt)

This software is free and distributable under the MIT license.
