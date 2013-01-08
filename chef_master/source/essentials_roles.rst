=====================================================
About Roles
=====================================================

.. include:: ../../includes_role/includes_role.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_roles_formats`
     - Role data is stored in two formats: as a |ruby| file that contains domain-specific language and as |json| data.
   * - :doc:`essentials_roles_manage`
     - There are several ways to manage roles, including with |knife| and the |chef manager|.

.. include:: ../../includes_role/includes_role_attribute.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_roles_attributes_types`
     - There are two types of attributes that can be used with roles: ``default`` and ``override``.
   * - :doc:`essentials_roles_attributes_persistence`
     - During a |chef| run, saved attributes are retrieved from the |chef server| and are merged with the attributes on the local system.
   * - :doc:`essentials_roles_attributes_precedence`
     - At the beginning of a |chef| run, all default, override, and automatic attributes are reset.
   * - :doc:`essentials_roles_attributes_automatic`
     - An automatic attribute is data that must be understood by |chef|, but not modified.
   * - :doc:`essentials_roles_attributes_notation`
     - Attributes are a special key-value store called a mash within the context of the |ruby| DSL.


.. toctree::
   :hidden:

   essentials_roles_formats
   essentials_roles_manage
   essentials_roles_attributes_types
   essentials_roles_attributes_persistence
   essentials_roles_attributes_precedence
   essentials_roles_attributes_automatic
   essentials_roles_attributes_notation





