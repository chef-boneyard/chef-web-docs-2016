.. This is an included how-to.


.. To initialize a |dockerfile| context in local-mode for an image named "example/apache2" that has a ``run_list`` of ``recipe[apache2]``:

.. code-block:: bash

   $ knife container docker init example/apache2 -r 'recipe[apache2]' -z

will create a directory named ``example`` with a subdirectory named ``demo`` in the ``Chef::Config[:knife][:dockerfiles_path]`` path. In the ``example`` directory, a subdirectory named ``chef`` is created, which contains all of the files and folders that are necessary for the |chef client| to run successfully inside a container.

You will need to define the ``container_service`` for the services defined by the ``apache2`` recipe. These will be managed by the |runit| init scheme that comes with |chef container|. For more information about ``container_service``, see http://docs.opscode.com/containers.html#container-services.