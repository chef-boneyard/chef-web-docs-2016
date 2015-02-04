.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

.. warning:: Make sure |drbd| synchronization has completed, and that |chef private| has fully started on the bootstrap node before continuing!

Each node that is part of the |chef private| back-end cluster participates in an election for which server should be the primary server for the |drbd| device. This means that, if the bootstrap node is not allowed to finish initializing the system before setting up the non-bootstrap server, the system may be left in an unstable state:

.. code-block:: bash

   $ touch /var/opt/opscode/drbd/drbd_ready

Followed by:

.. code-block:: bash

   $ private-chef-ctl reconfigure
