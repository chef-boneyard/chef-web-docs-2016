.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

.. warning:: Make sure |drbd| synchronization has completed, and that |chef private| has fully started on the bootstrap node before continuing!

Each member of your |chef private| back-end cluster participates in an election for who should be Primary for the |drbd| device. This means that, if you do not allow the bootstrap node to finish initializing the system before setting up the non-bootstrap server, you may leave the system in an unstable state.

Let ``private-chef-ctl`` know that you are ready to proceed

.. code-block:: bash

   $ touch /var/opt/opscode/drbd/drbd_ready

Followed by:

.. code-block:: bash

   $ private-chef-ctl reconfigure
