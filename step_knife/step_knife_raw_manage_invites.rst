.. This is an included how-to. 


To manage invites, enter a command similar to:

.. code-block:: bash

    $ knife raw '/association_requests'

to return something similar to:

.. code-block:: bash

    [
      {
        "id": "1279ce6c845b88a046039f1439ed9c3b",
        "username": "angleiron"
      }
    ]

You can delete a pending invite using the following:

.. code-block:: bash

    $ knife raw -m DELETE '/association_requests/1279ce6c845b88a046039f1439ed9c3b'

which returns output like:

.. code-block:: bash

    {
      "id": "1279ce6c845b88a046039f1439ed9c3b",
      "orgname": "sean-horn-opscode",
      "username": "angleiron",
      "organization": {
        "deprecated": true,
        "name": "sean-horn-opscode"
      },
      "user": "deprecated",
      "organization_admin_actor_id": "deprecated"
    }

If we try listing invites again with:

.. code-block:: bash

    $ knife raw '/association_requests'

If you only had one pending invite for this org, you will see an empty list:

.. code-block:: bash

    [
    
    ]
