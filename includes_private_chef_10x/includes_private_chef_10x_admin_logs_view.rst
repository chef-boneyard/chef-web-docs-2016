.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|chef private| has built-in support for easily tail-ing the logs it generates. To view all the logs being generated on a |chef private| server:

.. code-block:: bash

   $ private-chef-ctl tail

To view a specific services logs:

.. code-block:: bash

   $ private-chef-ctl SERVICENAME tail

Where ``SERVICENAME`` should be replaced with name of the service whose logs you want to view.



