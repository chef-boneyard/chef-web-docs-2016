.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To configure |drbd| on the non-bootstrap back-end server, you must first copy all the contents of ``/etc/opscode`` on the bootstrap node to the non-bootstrap back-end. On the non-bootstrap server:

Copy /etc/opscode from the bootstrap server

.. code-block:: bash

   $ scp -r FQDN:/etc/opscode /etc

Replace FQDN above with the FQDN of your bootstrap server.