=====================================================
|chef| for Containers
=====================================================

.. include:: ../../includes_containers/includes_containers.rst

.. image:: ../../images/containers.png

.. include:: ../../includes_containers/includes_containers_lxc.rst

|chef container|
=====================================================
.. include:: ../../includes_containers/includes_containers_chef_container.rst

**Install the chef-container Library**

To use the |resource container_service| resource and the |subcommand knife container| subcommands (``knife container docker build`` and ``knife container docker init``), install the |chef container| library. Run the following command:

.. code-block:: bash

   $ gem install chef-container
   
|chef| for Docker
=====================================================
.. include:: ../../includes_containers/includes_containers_docker.rst

.. image:: ../../images/containers_docker.png

.. include:: ../../includes_containers/includes_containers_docker_chef.rst

.. image:: ../../images/containers_docker_chef.png

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

container_service Resource
=====================================================
.. include:: ../../includes_resources/includes_resource_container_service.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_container_service_syntax.rst

Actions
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_container_service_actions.rst

Attributes
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_container_service_attributes.rst

Providers
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_container_service_providers.rst

Examples
-----------------------------------------------------
|generic resource statement|

**Start apachectl in a container**

.. include:: ../../step_resource/step_resource_container_service_start_apache2.rst


