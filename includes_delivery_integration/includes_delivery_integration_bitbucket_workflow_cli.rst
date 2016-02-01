.. The contents of this file may be included in multiple topics (using the includes directive).
.. The contents of this file should be modified in a way that preserves its ability to appear in multiple topics.


Install the |chef delivery_cli| CLI:

#. `Install the Delivery CLI <https://docs.chef.io/ctl_delivery.html#install-delivery-cli>`__.
#. In the command shell, create or navigate to the directory in which project repositories are located.
#. Use the ``delivery setup`` command with the following arguments to create the ``.delivery/cli.toml`` file:

   .. code-block:: bash

      $ delivery setup --ent=$DELIVERY_ENTERPRISE --org=$DELIVERY_ORG --user=$DELIVERY_USER --server=$DELIVERY_SERVER

#. Create a local clone of the project repository:

   .. code-block:: bash

      $ delivery clone $PROJECT

   If the project is cloned from |bitbucket| (or if a pre-existing clone is used), add it using ``delivery remote``. The Delivery clone URL can be found on the project's page in the Delivery UI. To create the remote run the following:

   .. code-block:: bash

      $ git remote add delivery $DELIVERY_CLONE_URL
