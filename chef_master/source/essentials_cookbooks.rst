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
     - The |chef| community has authored thousands of cookbooks, ranging from niche cookbooks that are used by only a few organizations to cookbooks that are some of the most popular and are used by nearly everyone.
   * - :doc:`Recipes </essentials_cookbook_recipes>`
     - A recipe is the most fundamental configuration element within the Chef environment.
   * - :doc:`Resources and Providers </resource>`
     - A resource defines the actions that can be taken, such as when a package should be installed, whether a service should be enabled or restarted, which groups, users, or groups of users should be created, where to put a collection of files, what the name of a new directory should be, and so on.
   * - :doc:`Lightweight Resources </lwrp>`
     - A lightweight resource is a custom resource that creates an abstract approach for defining a set of actions and (for each action) a set of attributes and validation parameters.
   * - :doc:`Attribute Files </essentials_cookbook_attribute_files>`
     - An attribute can be defined in a cookbook (or a recipe) and then used to override the default settings on a node.
   * - :doc:`Definitions </essentials_cookbook_definitions>`
     - A definition is used to create a resource by stringing together one (or more) existing resources.
   * - :doc:`Files </essentials_cookbook_files>`
     - A file distribution is a resource that tells a cookbook how to distribute one (or more) files to servers, including by node, by platform, and by file version.
   * - :doc:`Libraries </essentials_cookbook_libraries>`
     - A library allows arbitrary Ruby code to be included in a cookbook, either as a way to extend the Chef language or to implement a new class directly.
   * - :doc:`Metadata </essentials_cookbook_metadata>`
     - Every cookbook requires a small amount of metadata.
   * - :doc:`Templates </essentials_cookbook_templates>`
     - A cookbook template is a file written in a markup language that allows the contents of a file to be dynamically generated based on variables or complex logic.
   * - :doc:`Versions </essentials_cookbook_versions>`
     - A cookbook version represents a specific set of functionality that is different from the cookbook on which it is based.

.. note:: A cookbook includes a readme file.