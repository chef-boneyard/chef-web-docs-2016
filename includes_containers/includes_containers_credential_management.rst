.. This is an included how-to.


Credentials such as private keys, secrets, and certificates should not be kept in |docker| images. By default, secure credentials are deleted after the ``knife container docker build`` process is completed. In order for the resulting image to launch properly, the secure credentials must be mounted into the ``/etc/chef/secure`` directory. Credentials must be copied into a folder on the host machine, and then mounted into the container using the ``-v`` flag of the ``docker run`` command: https://docs.docker.com/reference/commandline/cli/#run.

For example, if all secure credentials are located in the ``/etc/chef-container/secure`` directory on the |docker| host, run the following command:

.. code-block:: bash

   $$ docker run -d -v /etc/chef-container/secure:/etc/chef/secure:ro NAMESPACE/IMAGE

Use the ``--include-credentials`` option with the ``docker init`` subcommand to override the default behavior and include these secure credentials in the image. For example:

.. code-block:: bash

    $ knife container docker init example/apache2 -r 'recipe[apache2]' --include-credentials

You will need to define the ``container_service`` for the services defined by the ``apache2`` recipe. These will be managed by the |runit| init scheme that comes with |chef container|. For more information about ``container_service``, see http://docs.getchef.com/containers.html#container-services.