.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Prefer strings over symbols, because they're easier to read and you don't need to explain to non-Rubyists what a symbol is. Please retrofit old cookbooks as you come across them.

Right:

.. code-block:: ruby

   default['foo']['bar'] = 'baz'

Wrong:

.. code-block:: ruby

   default[:foo][:bar] = 'baz'
