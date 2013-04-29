===================================
About Cookbooks
===================================

.. include:: ../../includes_cookbooks/includes_cookbooks.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Components
     - Description
   * - :doc:`Opscode-authored Cookbooks </opscode_cookbooks>`
     - |opscode| maintains a collection of cookbooks that are important to |chef| and are widely used by the |chef| community.
   * - `Community-authored Cookbooks <http://community.opscode.com/cookbooks>`_
     - The |chef| community has authored thousands of cookbooks, ranging from niche cookbooks that are used by only a few organizations to cookbooks that by nearly everyone.
   * - :doc:`Recipes </essentials_cookbook_recipes>`
     - A recipe is the most fundamental configuration element within the |chef| environment.
   * - :doc:`Cookbooks Directory Structure </essentials_cookbook_directory>`
     - The cookbooks/ directory is used to store the cookbooks that are used by |chef| when configuring the various systems in the organization.
   * - :doc:`Resources and Providers </essentials_cookbook_resources>`
     - A resource is a package, a service, a group of users, and so on. A resource tells |chef| which provider to use during a |chef| run for various tasks like installing packages, running |ruby| code, or accessing directories and file systems. The resource is generic: "install program A" while the provider knows what to do with that process on |debian| and |ubuntu| and |windows|. A provider defines the steps that are required to bring that piece of the system into the desired state. |chef| includes default providers that cover all of the most common scenarios.
   * - :doc:`Lightweight Resources </essentials_cookbook_lwrp>`
     - A lightweight resource is a custom resource that creates an abstract approach for defining a set of actions and (for each action) a set of attributes and validation parameters.
   * - :doc:`Attribute Files </essentials_cookbook_attribute_files>`
     - An attribute can be defined in a cookbook (or a recipe) and then used to override the default settings on a node.
   * - :doc:`Definitions </essentials_cookbook_definitions>`
     - A definition is used to create new resources by stringing together one (or more) existing resources.
   * - :doc:`Files </essentials_cookbook_files>`
     - A file distribution is a specific type of resource that tells a cookbook how to distribute files, including by node, by platform, or by file version.
   * - :doc:`Libraries </essentials_cookbook_libraries>`
     - A library allows the use of arbitrary |ruby| code in a cookbook, either as a way to extend the |chef| language or to implement a new class.
   * - :doc:`Metadata </essentials_cookbook_metadata>`
     - A metadata file is used to ensure that each cookbook is correctly deployed to each node.
   * - :doc:`Templates </essentials_cookbook_templates>`
     - A template is a file written in markup language that uses |ruby| statements to solve complex configuration scenarios.
   * - :doc:`Versions </essentials_cookbook_versions>`
     - A cookbook version represents a specific set of functionality that is different from the cookbook on which it is based.