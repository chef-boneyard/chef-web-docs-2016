.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Always specify all five digits of the file mode, and not as a string.

Right:

.. code-block:: ruby

   mode 00644

Wrong:

.. code-block:: ruby

   mode "644"
