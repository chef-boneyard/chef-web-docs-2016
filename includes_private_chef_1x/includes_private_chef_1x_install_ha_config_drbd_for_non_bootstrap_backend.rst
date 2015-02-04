.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Set up the configuration of |drbd| on the non-bootstrap back-end server:

.. code-block:: bash

   $ private-chef-ctl reconfigure

The installer will pause, asking you to confirm that you have set up |drbd|. Press ``CTRL-C`` to exit, and continue the last few steps require to set up |drbd|:

.. code-block:: bash

   $ drbdadm create-md pc0
   $ drbdadm up pc0

