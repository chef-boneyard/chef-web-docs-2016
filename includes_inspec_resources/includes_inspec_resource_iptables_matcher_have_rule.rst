.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``have_rule`` matcher tests the named rule against the information in the ``iptables`` file:

.. code-block:: ruby

   it { should have_rule('RULE') }
