=====================================================
knife azure
=====================================================

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure.rst

Install this plugin
=====================================================
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_azure.rst

Generate the Management Certificate
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_certificate.rst

image list
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_image_list.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_image_list_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_image_list_options.rst

server create
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_create.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_create_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_create_options.rst

**Examples**

For example, to provision a medium-sized |centos| machine configured as a web server in the "West US" data center, while also creating new hosted service and storage accounts, enter something like:

.. code-block:: bash

   $ knife azure server create -r "role[webserver]" --service-location "West US" --ssh-user foo 
     --ssh--password password --role-name web-apache-0001 --host-name web-apache 
     --tcp-endpoints 80:80,8080:8080 --source-image name_of_source_image --role-size Medium

To provision a medium-sized |centos| machine configured as a web server in the "West US" data center, while reusing existing hosted service and storage accounts, enter something like:

.. code-block:: bash

   $ knife azure server create -r "role[webserver]" --service-location "West US" 
     --hosted-service-name webservers --storage-account webservers-storage --ssh-user foo 
     --ssh--password password --role-name web-apache-0001 --host-name web-apache 
     --tcp-endpoints 80:80,8080:8080 --source-image name_of_source_image --role-size Medium

server delete
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_delete.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_delete_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_delete_options.rst

**Examples**

For example, to delete an instance named "devops12", enter:

.. code-block:: bash

   $ knife azure server delete devops12

server describe
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_describe.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_describe_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_describe_options.rst

**Examples**

For example, to view the details for a role named "admin", enter:

.. code-block:: bash

   $ knife azure server describe admin

server list
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_list.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_list_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_azure_server_list_options.rst