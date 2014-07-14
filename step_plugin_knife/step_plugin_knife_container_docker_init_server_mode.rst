.. This is an included how-to.


.. To initialize a |dockerfile| context in server-mode for an image named "example/apache2" that has a ``run_list`` of ``recipe[apache2]``:

.. code-block:: bash

   $ knife container docker init example/apache2 -r 'recipe[apache2]''

will create a new folder ``example`` with subfolder ``demo`` in ``Chef::Config[:knife][:dockerfiles_path]``. In ``example``, a directory named ``chef`` is created, which contains all of the files and folder necessary for the |chef client| to run successfully inside a container.

For |docker| images initialized to talk to a |chef server|, the default behavior is to remove secure credentials such as the validator key, the encrypted_data_bag_secret and the SSL certificates for the |chef server|. If you wish to include these secure credentials in your image you must use the ``--include-credentials`` option:

.. code-block:: bash

    $ knife container docker init example/apache2 -r 'recipe[apache2]' --include-credentials

You will also need to define the ``container_service``  for the services that the ``apache2`` recipe defines to be managed by the |runit| init scheme that comes with |chef container|. For more information on that, check out http://docs.opscode.com/containers.html#container-services.