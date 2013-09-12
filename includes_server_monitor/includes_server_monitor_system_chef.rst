.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


If the |service chef| service has high CPU utilization and is not logging anything, it will be helpful to view the stack trace for the service. Find the |service chef| master process:

.. code-block:: bash

   $ private-chef-ctl status opscode-chef | awk '{print $4}' | tr -d ')'

This will print a single process identifier, which can then be used to find the worker processes that have the highest CPU utilization:

.. code-block:: bash

   $ ps axo pid,ppid,pcpu,cmd | awk '{if ($2=="4327") print }'

to return something like:

.. code-block:: bash

   4406  4327  99.0 merb : merb : master
   4408  4327   0.0 merb : merb : master

where the first column is the process identifier for the worker process and the third column is the percentage of CPU utilization.

Send a ``SIGKILL`` to a worker process using:

.. code-block:: bash

   $ kill -SIGXCPU 4406

and then check the ``/var/log/opscode/current`` log file for the stack trace. It should begin with ``Stacktrace generated via SIGXCPU``.