.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``policy_name`` matcher must be the name of a security policy:

.. code-block:: ruby

   its('SeNetworkLogonRight') { should eq '*S-1-5-11' }
