.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A specific attribute precedence level for default, normal, and override attributes may be removed by using one of the following syntax patterns.

For default attributes:

* ``node.delete_default('foo', 'bar')``
* ``node.remove_default('foo', 'bar')``
* ``node.rm_default('foo', 'bar')``

For normal attributes:

* ``node.delete_normal('foo', 'bar')``
* ``node.remove_normal('foo', 'bar')``
* ``node.rm_normal('foo', 'bar')``

For override attributes:

* ``node.delete_override('foo', 'bar')``
* ``node.remove_override('foo', 'bar')``
* ``node.rm_override('foo', 'bar')``

These patterns return the computed value of the key being deleted for the specified precedence level.
