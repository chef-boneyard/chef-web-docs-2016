.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use ``key_vals`` to test how many values a key contains:

.. code-block:: ruby

   key = a b c

contains three values. To test that value to ensure it only contains one, use:

.. code-block:: ruby

   key_vals: 1
