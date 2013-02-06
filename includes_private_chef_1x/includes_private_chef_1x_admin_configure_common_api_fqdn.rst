.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In a tiered or high availability scenario, you are expected to be running multiple front-end servers. The ``api_fqdn`` should point to the fully qualified domain name that you want to use for accessing the Web UI and API.

In the following example, you would access your Private Chef server at chef.example.com.

.. code-block:: ruby

   api_fqdn "chef.example.com"
