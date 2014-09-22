.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

Periodic maintenance tasks are performed on the |chef server| servers via |cron| and the ``/etc/cron.d`` directory. With certain |centos| 6 configurations, an additional step is required to install |crontab|:

.. code-block:: bash

   $ yum install crontabs
