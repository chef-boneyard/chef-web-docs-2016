.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Use ``set()`` to set a user-defined value in the |json| object. A user-defined value always begins with ``#``. Values that are not user-defined may not be modified.

The syntax for this function:

.. code-block:: ruby

   set(#variableToSet, valueToSet)

where:

* ``variableToSet`` is the location of a user-defined value
* ``valueToSet`` is the value

For example:

.. code-block:: ruby

   set(#organization_name = 'ponyville')
