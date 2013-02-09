.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

When operating in a Tiered or High Availability scenario, the ``backend_vip`` setting must be configured.

* In the High Availability scenario, this setting should be set to the |fully qualified domain name| and IP address that will be shared among the back-end servers.
* In a Tiered configuration, this setting should point directly to the back-end server. 

For example:

.. code-block:: ruby

   backend_vip "be.example.com",
     :ipaddress => "192.168.4.7"