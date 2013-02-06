.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

When operating in a tiered or high-availability scenario, you need to configure the ``backend_vip``. In a High Availability setup, this should be set to the fully qualified domain name and IP address you will be sharing between your back-end servers. In a Tiered configuration, it should point directly to your back-end server. For example:

.. code-block:: ruby

   backend_vip "be.example.com",
     :ipaddress => "192.168.4.7"