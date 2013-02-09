.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

With the bootstrap complete, you can now populate ``/etc/opscode`` on the front-end servers with the files generated during the bootstrap process. Assuming you are logged in as root on your bootstrap server, something like:

.. code-block:: bash

   $ scp -r /etc/opscode FQDN:/etc

Will copy all the files from the bootstrap server to another system. Replace ``FQDN`` with the fully qualified domain name of the system you want to install.


