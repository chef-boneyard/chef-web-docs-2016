.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

With the bootstrap complete, the ``/etc/opscode`` directory on the front-end servers can be populated with the files generated during the bootstrap process. The following command assumes the user is logged in as the root user:

.. code-block:: bash

   $ scp -r /etc/opscode FQDN:/etc

This command will copy all the files from the bootstrap server to another system. Replace ``FQDN`` with the |fully qualified domain name| of the system you want to install.
