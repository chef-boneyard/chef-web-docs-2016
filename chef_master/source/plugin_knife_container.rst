=====================================================
knife container
=====================================================

.. include:: ../../includes_plugin_knife/includes_plugin_knife_container.rst

.. note:: Review the list of `common options <http://docs.chef.io/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

Install this plugin
=====================================================
.. include:: ../../step_plugin_knife/step_plugin_knife_container_install_rubygem.rst

docker build
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_container_docker_build.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_container_docker_build_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_container_docker_build_options.rst

Examples
-----------------------------------------------------
None.


docker init
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_container_docker_init.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_container_docker_init_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_container_docker_init_options.rst

**About Dockerfiles**

.. include:: ../../includes_containers/includes_containers_docker_dockerfile.rst

**Credential Management**

.. include:: ../../includes_containers/includes_containers_credential_management.rst

Examples
-----------------------------------------------------
**Create a Dockerfile**

.. include:: ../../step_plugin_knife/step_plugin_knife_container_docker_init_create_dockerfile.rst

**Local mode**

.. include:: ../../step_plugin_knife/step_plugin_knife_container_docker_init_local_mode.rst

**Server mode**

.. include:: ../../step_plugin_knife/step_plugin_knife_container_docker_init_server_mode.rst

**Include secure credentials in image**

.. include:: ../../step_plugin_knife/step_plugin_knife_container_docker_init_include_credentials.rst