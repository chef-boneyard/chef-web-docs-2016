.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The following examples show how to remove all attribute precedence levels.

**Delete all attribute precedence levels**

Given the following code structure:

.. code-block:: ruby

   node.default['foo'] = {
     'bar' => {
       'baz' => 52,
       'thing' => 'stuff',
     },
     'bat' => {
       'things' => [5, 6],
     },
   }

With override attributes:

.. code-block:: ruby

   node.override['foo']['bar']['baz'] = 999

Removing the ``'bar'`` key returns the computed value:

.. code-block:: ruby

   node.rm('foo', 'bar') #=> {'baz' => 999, 'thing' => 'stuff'}

Looking at ``'foo'``, all that's left is the ``'bat'`` entry:

.. code-block:: ruby

   node['foo'] #=> {'bat' => { 'things' => [5,6] } }


**Non-existent key deletes return nil**

.. code-block:: ruby

   node.rm_default("no", "such", "thing") #=> nil

