.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In previous versions of the |chef client|, ``node.override!`` was an alias of ``node.force_override``. Starting with |chef client| 12, ``node.force_override`` is changed from an accessor to a setter. Cookbooks that use ``node.override!`` must be updated for the correct attribute precedence type and must drop the exclamation point. For example:

.. code-block:: ruby

   node.override![:foo] = 'bar'

must be updated to:

.. code-block:: ruby

   node.force_override[:foo] = 'bar'
