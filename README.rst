Vim-Faust
=========

.. _Faust: http://faust.grame.fr/
.. _Solarized: http://ethanschoonover.com/solarized

This is Vim syntax-highlighting plugin for the `Faust`_ programming language. It is based
on the files in the Faust repository with a few improvements. I am not quite done adding
the changes I want, but for now this repo makes it a little easier to get Faust syntax
hightlighting without having to dig through their repo.

Improvements
------------

* MathDoc support
* Separated UI elements and primitives into different highlighting categories
* Label metadata 
* Improved integer and decimal recognition 
* Fixed forward slash recognition

Screen Captures
---------------

Here are some examples of Faust highlighting using the `Solarized`_ colorscheme:

.. image:: http://griffinmoe.com/images/vim-faust/solarized_cap.png
   :align: center

.. image:: http://griffinmoe.com/images/vim-faust/solarized_mdoc_cap.png
   :align: center

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

* Improve LaTeX support within MathDoc
* Fix over-eager highlighting for the , operator
