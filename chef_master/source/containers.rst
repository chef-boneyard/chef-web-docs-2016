=====================================================
|chef| for Containers
=====================================================

.. include:: ../../includes_containers/includes_containers.rst

.. image:: ../../images/containers.png

.. include:: ../../includes_containers/includes_containers_lxc.rst

|chef container|
=====================================================
.. include:: ../../includes_containers/includes_containers_chef_container.rst
   
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

Container Services
=====================================================
The service that |runit| will manage is defined as an attribute of the container. This may be done by editing the ``first-boot.json`` file or by adding an attribute to a cookbook.

For example, the ``first-boot.json`` file may look similar to:

.. code-block:: javascript

   {
     "run_list": [
	   "recipe[recipe_name]"
	 ],
     "container_service": {
	   "service_resource_name": {
	     "command": "service_run_command"
	   }
	 }
   }

where:

* ``recipe_name`` is the name of the recipe
* ``service_resource_name`` is the service resource name that will be managed by |runit|
* ``service_run_command`` is the command that will be executed by |runit| to manage the service

For example, if the service is |nginx|, the ``container_service`` paramaters would be similar to:

.. code-block:: javascript

   {
     "run_list": [
	   "recipe[nginx]"
	 ],
     "container_service": {
	   "nginx": {
	     "command": "/usr/sbin/nginx -c /etc/conf/nginx.conf"
	   }
	 }
   }

The container service setting may also be specified using an attributes file in a cookbook. For example:

.. code-block:: ruby

   default['container_service']['service_resource_name']['command'] = 'service_run_command'

or, using the same |nginx| example as above:

.. code-block:: ruby

   default['container_service']['nginx']['command'] = '/usr/sbin/nginx -c /etc/conf/nginx.conf'
