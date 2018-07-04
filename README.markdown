Vim-Faust
=========

[Faust]: http://faust.grame.fr/
[Solarized]: http://ethanschoonover.com/solarized

This is Vim syntax-highlighting plugin for the [Faust][] programming language. It is based
on the syntax file in the Faust repository and includes a few additions. I am improving my
Regular Expressions skills as I go along, so please feel free to contribute.

Additions
---------

* MathDoc support
* Separated UI elements and primitives into different highlighting categories
* Label metadata 
* Improved integer and decimal recognition 
* Fixed forward slash recognition

Installation
============

[Pathogen]: https://github.com/tpope/vim-pathogen
[Vundle]: https://github.com/gmarik/vundle

I definitely recommend using [Pathogen][] if you are not already:

    $ cd ~/.vim/bundle
    $ git clone https://github.com/gmoe/vim-faust.git

Or I suppose you could use [Vundle][] if you're one of those kinds of people:

    Plugin 'gmoe/vim-faust'
    :PluginInstall

Future Additions
================

* Improve LaTeX support within MathDoc
* Fix over-eager highlighting for the , operator
