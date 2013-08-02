.. This is an included how-to. 

To upload all cookbooks that start with "apache" and belong to the "webserver" role, browse to the top level of the |chef repo| and enter:

.. code-block:: bash

   $ knife upload cookbooks/apache\* roles/webserver.json

