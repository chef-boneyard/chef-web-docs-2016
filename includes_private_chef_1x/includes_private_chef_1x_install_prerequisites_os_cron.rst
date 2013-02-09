.. The contents of this file may be included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Periodic maintenance tasks are performed on |chef private| servers via |cron| and the ``/etc/cron.d`` directory. On |centos| 6 minimal installations, you may not have |cron| installed and configured.

Install |crontab| on |centos| 6:

.. code-block:: bash

   $ yum install crontabs
