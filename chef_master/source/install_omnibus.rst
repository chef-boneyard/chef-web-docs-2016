=====================================================
About the Omnibus Installer
=====================================================

The |omnibus installer| is used to install |chef| on a server, a workstation, and a node. To install |chef| using the |omnibus installer|:

#. Run the command that appears (for |unix| and |linux| environments) or download the |omnibus installer| (for |windows| environments). For example, for the |mac os x|:

   .. code-block:: bash

      curl -L http://www.opscode.com/chef/install.sh | sudo bash

   and then enter the password for the local machine.
#. As the |chef client| is being installed, the command window will show something like the following:

   .. code-block:: bash

      Downloading Chef for mac_os_x...
        % Total    % Received  % Xferd   Average  Speed    Time     Time      Time   Current
                                         Dload   Upload    Total    Spent     Left   Speed
      100 23.9M  100 23.9M     0     0    944k       0   0:00:26  0:00:26  --:--:--   838k
      Installing Chef

In addition to the default install behavior, the Omnibus Installer has the following options:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Option
     - Description
   * - ``-p``
     - Install a pre-release version. Requires that ``-s`` be passed as part of the command.
   * - ``-s``
     - Indicates that the ``-p`` and/or ``-v`` options will be passed as part of the command.
   * - ``-v``
     - The version of the |chef client| to be installed. A version always takes the form x.y.z, where x, y, and z are decimal numbers that are used to represent major (x), minor (y), and patch (z) versions. A two-part version (x.y) is also allowed. For more information about application versioning, see http://semver.org/.

For example:

.. code-block:: bash

   $ curl -LO https://www.opscode.com/chef/install.sh && sudo bash ./install.sh -v 10.26.0 && rm install.sh

and

.. code-block:: bash

   $ curl -L https://www.opscode.com/chef/install.sh | sudo bash -s -- -v 10.26.0

will both install the |chef client|, version 10.26.0.


