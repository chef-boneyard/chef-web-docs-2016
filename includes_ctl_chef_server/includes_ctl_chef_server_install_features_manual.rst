.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-server-ctl.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``install`` subcommand downloads packages from https://packagecloud.io/ by default. For systems that are behind a firewall (and do not have connectivity to https://packagecloud.io/), these packages can be installed manually. First download the package that is appropriate for the platform and save it to a local path. Then run the ``install`` command using the ``--path`` option to specify the location for the package:

.. code-block:: bash

   $ chef-server-ctl install NAME_OF_PACKAGE --path /path/to/package

For example:

.. code-block:: bash

   $ chef-server-ctl install opscode-manage-1.6.2-1.el6.x86_64 --path /home/vagrant
