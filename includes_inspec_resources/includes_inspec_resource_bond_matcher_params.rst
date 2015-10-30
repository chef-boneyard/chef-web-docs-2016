.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``params`` matcher tests arbitrary parameters for the bonded network interface:

.. code-block:: ruby

   its('params') { should eq 'value' }
