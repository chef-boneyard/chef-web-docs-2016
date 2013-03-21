=====================================================
About Environments
=====================================================

.. include:: ../../includes_environment/includes_environment.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_environments_default`
     - Every |chef| organization must have at least one environment.
   * - :doc:`essentials_environments_formats`
     - Environment data is stored in two formats: as a |ruby| file that contains domain-specific language and as |json| data.
   * - :doc:`essentials_environments_create`
     - An environment can be created using |ruby|, with |json|, using |knife|, the |chef manager|, or by using the |api chef server|.
   * - :doc:`essentials_environments_manage`
     - There are several ways to manage environments, including with |knife| and the |chef manager|.

.. include:: ../../includes_environment/includes_environment_attribute.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Method
     - Description
   * - :doc:`essentials_environments_attributes_types`
     - There are two types of attributes that can be used with environments: ``default`` and ``override``.
   * - :doc:`essentials_environments_attributes_persistence`
     - During a |chef| run, saved attributes are retrieved from the |chef server| and are merged with the attributes on the local system.
   * - :doc:`essentials_environments_attributes_precedence`
     - At the beginning of a |chef| run, all default, override, and automatic attributes are reset.
   * - :doc:`essentials_environments_attributes_automatic`
     - An automatic attribute is data that must be understood by |chef|, but not modified.
   * - :doc:`essentials_environments_attributes_notation`
     - Attributes are a special key-value store called a mash within the context of the |ruby| DSL.


.. toctree::
   :hidden:

   essentials_environments_default
   essentials_environments_formats
   essentials_environments_create
   essentials_environments_manage
   essentials_environments_attributes_types
   essentials_environments_attributes_persistence
   essentials_environments_attributes_precedence
   essentials_environments_attributes_automatic
   essentials_environments_attributes_notation
