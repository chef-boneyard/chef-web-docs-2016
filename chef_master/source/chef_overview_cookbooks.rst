=====================================================
Cookbooks
=====================================================

.. include:: ../../includes_cookbooks/includes_cookbooks.rst

|chef| uses |ruby| as its reference language for creating cookbooks and defining recipes, with an extended DSL for specific resources. |chef| provides a reasonable set of resources, enough to support many of the most common infrastructure automation scenarios; however, this DSL can also be extended when additional resources and capabilities are required.

Some important components of cookbooks include:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Feature
     - Description
   * - .. image:: ../../images/icon_cookbook_attributes.png
     - .. include:: ../../includes_cookbooks/includes_cookbooks_attribute.rst
   * - .. image:: ../../images/icon_cookbook_recipes.png
     - .. include:: ../../includes_cookbooks/includes_cookbooks_recipe.rst
   * - .. image:: ../../images/icon_cookbook_versions.png
     - .. include:: ../../includes_cookbooks/includes_cookbooks_version.rst

|chef| will run a recipe only when asked. When |chef| runs the same recipe more than once, the results will be the same system state each time. When a recipe is run against a system, but nothing has changed on either the system or in the recipe, |chef| won't change anything.

In addition to attributes, recipes, and versions, the following items are also part of cookbooks:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Components
     - Description
   * - :doc:`Definitions </essentials_cookbook_definitions>`
     - A definition is used to create new resources by stringing together one (or more) existing resources.
   * - :doc:`Files </essentials_cookbook_files>`
     - A file distribution is a specific type of resource that tells a cookbook how to distribute files, including by node, by platform, or by file version.
   * - :doc:`Libraries </essentials_cookbook_libraries>`
     - A library allows the use of arbitrary |ruby| code in a cookbook, either as a way to extend the |chef| language or to implement a new class.
   * - :doc:`Lightweight Resources </lwrp>`
     - A lightweight resource is a custom resource that creates an abstract approach for defining a set of actions and (for each action) a set of attributes and validation parameters.
   * - :doc:`Metadata </essentials_cookbook_metadata>`
     - A metadata file is used to ensure that each cookbook is correctly deployed to each node.\
   * - :doc:`Resources and Providers </resource>`
     - A resource is a package, a service, a group of users, and so on. A resource tells |chef| which provider to use during a |chef| run for various tasks like installing packages, running |ruby| code, or accessing directories and file systems. The resource is generic: "install program A" while the provider knows what to do with that process on |debian| and |ubuntu| and |windows|. A provider defines the steps that are required to bring that piece of the system into the desired state. |chef| includes default providers that cover all of the most common scenarios.
   * - :doc:`Templates </essentials_cookbook_templates>`
     - A template is a file written in markup language that uses |ruby| statements to solve complex configuration scenarios.

|opscode| maintains a large collection of cookbooks. In addition, there are thousands of cookbooks created and maintained by the |chef| community:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Components
     - Description
   * - :doc:`Cookbooks Maintained by Opscode </opscode_cookbooks>`
     - |opscode| maintains a collection of cookbooks that are important to |chef| and are widely used by the |chef| community.
   * - `Cookbooks Maintained by the Chef Community <http://community.opscode.com/cookbooks>`_
     - The |chef| community has authored thousands of cookbooks, ranging from niche cookbooks that are used by only a few organizations to cookbooks that are some of the most popular and are used by nearly everyone.