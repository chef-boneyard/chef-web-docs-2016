=====================================================
|chef| for Containers
=====================================================

.. include:: ../../includes_containers/includes_containers.rst

.. image:: ../../images/containers.png

.. include:: ../../includes_containers/includes_containers_lxc.rst

|chef container|
=====================================================
.. include:: ../../includes_containers/includes_containers_chef_container.rst

Securing Credentials
-----------------------------------------------------
The best practice for securing credentials like private keys, secrets, and certificates in container images. To support this best practice, |knife container| by default deletes these files upon the completion of the image build. The process for mounting or otherwise making these files available to the |chef client| varies, depending on the solution being used for containers.

|chef| for |docker|
=====================================================
.. include:: ../../includes_containers/includes_containers_docker.rst

.. image:: ../../images/containers_docker.png

.. include:: ../../includes_containers/includes_containers_docker_chef.rst

.. image:: ../../images/containers_docker_chef.png

Credential Management
-----------------------------------------------------
Credentials such as private keys, secrets, and certificates should not be kept in |docker| images. By default, secure credentials are deleted after the ``knife container docker build`` process is completed. In order for the resulting image to launch properly, the secure credentials must be mounted into the ``/etc/chef/secure`` directory. Credentials must be copied into a folder on the host machine, and then mounted into the container using the ``-v`` flag of the ``docker run`` command: https://docs.docker.com/reference/commandline/cli/#run.

For example, if all secure credentials are located in the ``/etc/chef-container/secure`` directory on the |docker| host, run the following command:

.. code-block:: bash

   $$ docker run -d -v /etc/chef-container/secure:/etc/chef/secure:ro NAMESPACE/IMAGE
   
|dockerfile|
-----------------------------------------------------
.. include:: ../../includes_containers/includes_containers_docker_dockerfile.rst

..
.. Using LXC
.. =====================================================
.. .. include:: ../../includes_containers/includes_containers_lxc.rst
.. 
.. .. image:: ../../images/containers_lxc.png
.. 

|subcommand knife container|
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_container.rst

**Install this plugin**

.. include:: ../../step_plugin_knife/step_plugin_knife_container_install_rubygem.rst

docker build
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_container_docker_build.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_container_docker_build_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_container_docker_build_options.rst

docker init
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_container_docker_init.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_container_docker_init_syntax.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_plugin_knife/includes_plugin_knife_container_docker_init_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
**Create a Dockerfile**

.. include:: ../../step_plugin_knife/step_plugin_knife_container_docker_init_create_dockerfile.rst

Container Services
=====================================================
.. include:: ../../includes_containers/includes_containers_container_service_attributes.rst
