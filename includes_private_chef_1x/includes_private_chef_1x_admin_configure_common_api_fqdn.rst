.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In a Tiered or High Availability scenario, it is expected that multiple front-end servers will be running. The ``api_fqdn`` setting should point to the |fqdn| that will be used to access the user interface for |chef private| and for the |api chef server|.

The following example shows how this setting is configured when the domain is ``chef.example.com``:

.. code-block:: ruby

   api_fqdn "chef.example.com"
