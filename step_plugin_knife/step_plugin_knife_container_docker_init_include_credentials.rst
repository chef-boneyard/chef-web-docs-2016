.. This is an included how-to.


To override the default behavior and include secure credentials in an image:

.. code-block:: bash

    $ knife container docker init example/apache2 -r 'recipe[apache2]' --include-credentials

You will need to define the ``container_service`` for the services defined by the ``apache2`` recipe. These are managed by the |runit| init scheme that comes with |chef container|. For more information about ``container_service``, see http://docs.chef.io/containers.html#container-services.