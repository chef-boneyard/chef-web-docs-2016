.. The contents of this file are included in multiple slide decks.
.. This file should not be changed in a way that hinders its ability to appear in multiple slide decks.

A code block shows a block of code (obviously). If Pygments is enabled for Sphinx, use the code-block directive to show colors applied. Use a double colon (``::``) to introduce the default code block. For example, Ruby code:

.. code-block:: ruby

   package "foo" do
     action :install
   end

and the same without the directive::

   package "foo" do
     action :install
   end
