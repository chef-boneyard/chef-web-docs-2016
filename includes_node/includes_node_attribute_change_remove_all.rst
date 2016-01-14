.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

All attribute precedence levels may be removed by using one of the following syntax patterns:

* ``node.delete('foo', 'bar')``
* ``node.remove('foo', 'bar')``
* ``node.rm('foo', 'bar')``

.. note:: Using ``node['foo'].delete('bar')`` will throw an exception that points to the new API.
