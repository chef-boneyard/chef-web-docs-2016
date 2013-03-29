=====================================================
About Attribute Files
=====================================================

.. include:: ../../includes_cookbooks/includes_cookbooks_attribute.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Topic
     - Description
   * - :doc:`essentials_cookbook_attribute_files_ordering`
     - When |chef| loads cookbook attribute files, it does so in alphabetical order for all the cookbooks.
   * - :doc:`essentials_cookbook_attribute_files_accessor_methods`
     - Attribute accessor methods are automatically created and the method invocation can be used interchangeably with the keys.

.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_when_to_use.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Topic
     - Description
   * - :doc:`essentials_cookbook_attribute_files_attribute_types`
     - There are four types of attributes: ``default``, ``normal``, ``override``, and ``automatic``. Both ``default`` and ``override`` attributes can be forced on a case-by-case basis.
   * - :doc:`essentials_cookbook_attribute_files_attribute_persistence`
     - During a |chef| run, saved attributes are retrieved from the |chef server| and are merged with the attributes on the local system.
   * - :doc:`essentials_cookbook_attribute_files_attribute_precedence`
     - At the beginning of a |chef| run, all default, override, and automatic attributes are reset.
   * - :doc:`essentials_cookbook_attribute_files_attribute_automatic`
     - An automatic attribute is data that must be understood by |chef|, but not modified.
   * - :doc:`essentials_cookbook_attribute_files_attribute_notation`
     - Attributes are a special key-value store called a mash within the context of the |ruby| DSL.
   * - :doc:`essentials_cookbook_attribute_files_attribute_methods`
     - Methods are available to set attribute precedence in a cookbook.


.. toctree::
   :hidden:

   essentials_cookbook_attribute_files_accessor_methods
   essentials_cookbook_attribute_files_ordering
   essentials_cookbook_attribute_files_attribute_types
   essentials_cookbook_attribute_files_attribute_persistence
   essentials_cookbook_attribute_files_attribute_precedence
   essentials_cookbook_attribute_files_attribute_automatic
   essentials_cookbook_attribute_files_attribute_notation
   essentials_cookbook_attribute_files_attribute_methods
