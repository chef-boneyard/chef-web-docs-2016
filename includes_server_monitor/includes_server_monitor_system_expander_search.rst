.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


If the search indexes are not being updated properly, first ensure that the |service expander| service is running on the backend machine:

.. code-block:: bash

   $ private-chef-ctl status opscode-expander

and then (if it is not running), start the service:

.. code-block:: bash

   $ private-chef-ctl start opscode-expander

If the |service expander| does not start correctly, then take a look at the ``/var/log/opscode/opscode-expander/current`` log file for error messages. 

If the |service expander| is running, check the queue length:

.. code-block:: bash

   $ watch -n1 sudo -E bin/opscode-expanderctl queue-depth

If the number of total messages continues to increase, increase the number of workers available to the |service expander| service.

