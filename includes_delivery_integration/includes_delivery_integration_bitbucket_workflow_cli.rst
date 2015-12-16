.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Install the |chef delivery_cli| CLI:

#. `Install the Delivery CLI <https://docs.chef.io/ctl_delivery.html#install-delivery-cli>`__.

#. In the command shell, create or navigate to the directory in which project repositories are located.

#. Use the ``delivery setup`` command with the following arguments to create the ``.delivery/cli.toml`` file:

   .. code-block:: bash

      $ delivery setup --ent=$DELIVERY_ENTERPRISE --org=$DELIVERY_ORG --user=$DELIVERY_USER --server=$DELIVERY_SERVER
