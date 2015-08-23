.. THIS PAGE DOCUMENTS chef-client version 11.12

=====================================================
An Overview of |chef|
=====================================================

Welcome to |chef|!

.. include:: ../../includes_chef/includes_chef.rst

|chef| Components
=====================================================
The following diagram shows the relationships between the various elements of |chef|, including the nodes, the server, and the workstations. These elements work together to provide the |chef client| the information and instruction that it needs so that it can do its job. As you are reviewing the rest of this doc, use the icons in the tables to refer back to this image.

.. image:: ../../images/overview_chef_11-14.png

.. include:: ../../includes_chef/includes_chef_11-all_key_elements.rst

The following sections discuss these elements (and their various components) in more detail.

Nodes
=====================================================
.. include:: ../../includes_node/includes_node.rst

.. include:: ../../includes_node/includes_node_types.rst

Some important components on nodes include:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_chef_client.png
     - .. include:: ../../includes_chef_client/includes_chef_client.rst
       
       .. include:: ../../includes_security/includes_security_key_pairs_chef_client.rst
   * - .. image:: ../../images/icon_ohai.png
     - .. include:: ../../includes_ohai/includes_ohai.rst

Workstations
=====================================================
.. include:: ../../includes_workstation/includes_workstation.rst

Some important components of workstations include:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_knife.png
     - .. include:: ../../includes_knife/includes_knife.rst
       
       .. include:: ../../includes_security/includes_security_key_pairs_knife.rst
   * - .. image:: ../../images/icon_repository.png
     - .. include:: ../../includes_chef_repo/includes_chef_repo.rst

System administrators and developers know best about how their infrastructure should be put together. Therefore, the |chef client| makes as few decisions on its own as possible. When a decision must be made, the |chef client| uses a reasonable default setting that can be easily changed by the system administrators and developers, most often by defining attributes in cookbooks that take precedence over the default attributes present on nodes.

The Server
=====================================================
.. include:: ../../includes_chef_server/includes_chef_server.rst

There are three types of servers:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Server
     - Description
   * - Enterprise Chef
     - .. include:: ../../includes_chef/includes_chef_11_private.rst
   * - Hosted Enterprise Chef
     - .. include:: ../../includes_chef/includes_chef_hosted.rst
   * - Open Source Chef
     - .. include:: ../../includes_chef/includes_chef_11_open_source.rst

.. include:: ../../includes_chef/includes_chef_api_client.rst

In addition to node objects, policy, and cookbooks, a |chef server| includes:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_search.png
     - .. include:: ../../includes_search/includes_search.rst
   * - .. image:: ../../images/icon_manager.png
     - .. include:: ../../includes_chef/includes_chef_manager.rst

Node Objects
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_object.rst

Some important node objects include:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_node_attribute.png
     - .. include:: ../../includes_node/includes_node_attribute.rst
   * - .. image:: ../../images/icon_run_lists.png
     - .. include:: ../../includes_node/includes_node_run_list.rst

Policy
-----------------------------------------------------
.. include:: ../../includes_chef/includes_chef_policy.rst

Some important aspects of policy include:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_roles.png
     - .. include:: ../../includes_role/includes_role.rst
   * - .. image:: ../../images/icon_data_bags.png
     - .. include:: ../../includes_data_bag/includes_data_bag.rst
   * - .. image:: ../../images/icon_environments.png
     - .. include:: ../../includes_environment/includes_environment.rst

Cookbooks
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks.rst

The |chef client| uses |ruby| as its reference language for creating cookbooks and defining recipes, with an extended DSL for specific resources. A reasonable set of resources are available to the |chef client|, enough to support many of the most common infrastructure automation scenarios; however, this DSL can also be extended when additional resources and capabilities are required.

Some important components of cookbooks include:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_node_attribute.png
     - .. include:: ../../includes_cookbooks/includes_cookbooks_attribute.rst
   * - .. image:: ../../images/icon_cookbook_recipes.png
     - .. include:: ../../includes_cookbooks/includes_cookbooks_recipe.rst
   * - .. image:: ../../images/icon_cookbook_versions.png
     - .. include:: ../../includes_cookbooks/includes_cookbooks_version.rst

The |chef client| will run a recipe only when asked. When the |chef client| runs the same recipe more than once, the results will be the same system state each time. When a recipe is run against a system, but nothing has changed on either the system or in the recipe, the |chef client| won't change anything.

In addition to attributes, recipes, and versions, the following items are also part of cookbooks:

* Resources and providers. A resource is a package, a service, a group of users, and so on. A resource tells the |chef client| which provider to use during a |chef client| run for various tasks, such as installing packages, running |ruby| code, or accessing directories and file systems. A resource is generic: "install program A" while a provider knows what to do with that process on |debian| and |ubuntu| and |windows|. A provider defines the steps that are required to bring that piece of the system into the desired state. Default providers exist that cover the most common scenarios.
* File distributions. A file distribution is a specific type of resource that tells a cookbook how to distribute files, including by node, by platform, or by file version.
* Definitions. A definition is used to create new resources by stringing together one (or more) existing resources.
* Libraries. A library allows the use of arbitrary |ruby| code in a cookbook, either as a way to extend the |chef client| language or to implement a new class.
* Templates. A template is a file written in markup language that uses |ruby| statements to solve complex configuration scenarios.
* Configuration files. A metadata file to ensure that each cookbook is correctly deployed to each node.

Conclusion
=====================================================
.. include:: ../../includes_chef/includes_chef_about.rst


