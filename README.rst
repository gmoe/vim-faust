Vim-Faust
=========

.. _Faust: http://faust.grame.fr/

This is Vim syntax-highlighting plugin for the `Faust`_ programming language. It is based
on the files in the Faust repository with a few improvements. I am not quite done adding
the changes I want, but for now this repo makes it a little easier to get Faust syntax
hightlighting without having to dig through their repo.

Installation
============

.. _Pathogen: https://github.com/tpope/vim-pathogen
.. _Vundle: https://github.com/gmarik/vundle

I definitely recommend using `Pathogen`_ if you are not already.::

  $ cd ~/.vim/bundle
  $ git clone https://github.com/gmoe/vim-faust.git

Or I suppose you could use `Vundle`_ if you're one of those kinds of people.::

  Bundle 'gmoe/vim-faust'
  :BundleInstall

TODO
====

* MathDoc support
* LaTeX support within MathDoc
* Fix over-eager highlighting for the , operator
