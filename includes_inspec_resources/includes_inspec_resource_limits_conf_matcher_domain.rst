.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``domain`` matcher tests the domain in the ``limits.conf`` file, along with associated type, item, and value:

.. code-block:: ruby

   its('domain') { should include ['type', 'item', 'value'] }

For example:

.. code-block:: ruby

   its('grantmc') { should include ['hard', 'nofile', '63536'] }
