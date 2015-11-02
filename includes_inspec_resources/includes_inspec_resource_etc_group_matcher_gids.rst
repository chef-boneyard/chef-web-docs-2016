.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``gids`` matcher tests if the named group identifier is present or if it contains duplicates:

.. code-block:: ruby

   its('gids') { should_not contain_duplicates }
