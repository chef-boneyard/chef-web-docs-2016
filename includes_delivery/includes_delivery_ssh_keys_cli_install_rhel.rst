.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


For |redhat enterprise linux| 6.5 and |suse els| 6.5, run the following commands:

.. code-block:: bash

   $ curl -o delivery-cli.rpm https://s3.amazonaws.com/delivery-packages/cli/delivery-cli-20150408004719-1.x86_64.rpm

and then:

.. code-block:: bash

   sudo yum install delivery-cli.rpm
