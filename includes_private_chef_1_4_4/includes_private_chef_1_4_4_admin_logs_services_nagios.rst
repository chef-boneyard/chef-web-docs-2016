.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``nagios`` service creates both supervisor and administrator logs. ``/var/log/opscode/nagios/nagios.log`` contains status check and notification information. These are rotated into the ``/var/log/opscode/nagios/archive`` directory daily. To follow the logs for this service, enter the following command:

.. code-block:: bash

   $ private-chef-ctl nagios tail

