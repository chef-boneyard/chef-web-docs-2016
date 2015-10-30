.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``have_interface`` matcher tests if the named interface is defined for the network bridge:

.. code-block:: ruby

   it { should have_interface 'eth0' }
