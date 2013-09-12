.. This is an included how-to. 


To perform a controlled failover, stop |keepalived| on the current primary:

.. code-block:: bash

   $ sudo private-chef-ctl stop keepalived

which will initiate a failover from the primary to the secondary. Then use the ``ha-status`` option:

.. code-block:: bash

   $ watch -n1 sudo private-chef-ctl ha-status