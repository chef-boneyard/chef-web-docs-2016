.. THIS PAGE DOCUMENTS Enterprise Chef server version 11.1

.. include:: ../../release_11-x_master/upgrade_server_ha.rst   If the upgrade process times out, re-run the command until it finishes successfully.

#. Copy the entire ``/etc/opscode`` directory from the back end primary machine to all front and back end nodes. For example, from each server run:

   .. code-block:: bash
      
      $ scp -r <Bootstrap server IP>:/etc/opscode /etc

   or from the back end primary machine:

   .. code-block:: bash
      
      $ scp -r /etc/opscode <each servers IP>:/etc

#. Upgrade the back end secondary machine with the following command:

   .. code-block:: bash
      
      $ private-chef-ctl upgrade

   In some instances, after the upgrade processes is complete, it may be required to stop |keepalived| on the back end secondary machine, then restart |keepalived| on the back end primary machine, and then restart |keepalived| on the back end secondary machine.

#. Upgrade all front end machines with the following commands:

   .. code-block:: bash
      
      $ private-chef-ctl upgrade

#. Run the following command on all front end and back end machines:

   .. code-block:: bash
      
      $ private-chef-ctl start

#. After the upgrade process is complete, the state of the system after the upgrade has been tested and verified, and that everything looks satisfactory, remove old data by running the following command on each machine:

   .. code-block:: bash
   
      $ private-chef-ctl cleanup

   This process will remove old services, old data, messages about old services not running, and so on.

   .. note:: The message ``[ERROR] opscode-chef-mover is not running`` is expected, does not indicate an actual error, and is safe to ignore.
