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
The best practice for securing credentials like private keys, secrets, and certificates that are used with containers is to not store them within the container images. To support this best practice, |subcommand knife container| by default deletes these files upon the completion of the image build. The process for mounting or otherwise making these files available to the |chef client| varies, depending on the solution being used for containers.

|chef| for |docker|
=====================================================
.. include:: ../../includes_containers/includes_containers_docker.rst

.. image:: ../../images/containers_docker.png

.. include:: ../../includes_containers/includes_containers_docker_chef.rst

.. image:: ../../images/containers_docker_chef.png

Credential Management
-----------------------------------------------------
.. include:: ../../includes_containers/includes_containers_credential_management.rst
   
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

**Local mode**

.. include:: ../../step_plugin_knife/step_plugin_knife_container_docker_init_local_mode.rst

**Server mode**

.. include:: ../../step_plugin_knife/step_plugin_knife_container_docker_init_server_mode.rst

**Include secure credentials in image**

.. include:: ../../step_plugin_knife/step_plugin_knife_container_docker_init_include_credentials.rst

Container Services
=====================================================
.. include:: ../../includes_containers/includes_containers_container_service_attributes.rst
