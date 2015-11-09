.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


For all operating systems:

From your workstation `working` directory (where you will create projects--Chef recommends one working directory for each Organization), configure the ``delivery`` command line interface (CLI) to contact the |chef delivery| server at ``SERVER``, with your ``ENTERPRISE`` and ``ORGANIZATION``. This command creates the ``.delivery/cli.toml`` file with the specified settings.

   .. code-block:: bash

      $ delivery setup --server=DELIVERY_SERVER_IP_ADDR --ent=ENTERPRISE --org=ORGANIZATION --user=USERNAME
