.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use ``multiple_values`` to test for the presence of multiple key values:

.. code-block:: ruby

   'key = a' and 'key = b'
   params['key'] = ['a', 'b']

or:

.. code-block:: ruby

   'key = a' and 'key = b'
   params['key'] = 'b'

To test if multiple values are present, use:

.. code-block:: ruby

   multiple_values: false

The preceding test will fail with the first example and will pass with the second.
