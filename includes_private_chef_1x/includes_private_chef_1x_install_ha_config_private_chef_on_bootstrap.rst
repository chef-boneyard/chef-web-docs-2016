.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To continue setting up |chef private| on a bootstrap server, run:

.. code-block:: bash

   $ private-chef-ctl reconfigure

This command may take several minutes to run, during which you will see the output of the |chef| run that is configuring your new |chef private| installation. When it is complete, the following message is displayed:

.. code-block:: bash

   Chef Server Reconfigured!

.. note:: |chef private| is composed of many different services, which work together to create a functioning system. One impact of this is that it can take a few minutes for the system to finish starting up. One way to tell that the system is fully ready is to use the top command. You will notice high CPU utilization for several |ruby| processes while the system is starting up. When that utilization drops off, the system is ready.
