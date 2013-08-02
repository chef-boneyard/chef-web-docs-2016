.. This is an included how-to. 

A |chef client| that is running as a daemon can be woken up and started by sending the process a ``SIGUSR1``. For example, to trigger a |chef client| run on a machine running |linux|:

.. code-block:: bash

   $ sudo killall -USR1 chef-client





