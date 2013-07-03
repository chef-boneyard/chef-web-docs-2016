.. This is an included how-to. 


To find the uptime of all web servers, enter:

.. code-block:: bash

   $ knife winrm "role:web" "net stats srv" -x Administrator -P password
