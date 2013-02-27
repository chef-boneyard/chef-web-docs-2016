=====================================================
Workstations
=====================================================

.. include:: ../../includes_workstation/includes_workstation.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Feature
     - Description
   * - :doc:`Install Chef </install_workstation>`
     - Develop cookbooks, synchronize with the |chef| repository, and upload and maintain data on the |chef server|.
   * - :doc:`essentials_repository`
     - The |chef| repository is the location in which cookbooks, roles, data bags, environments, and other configuration files are stored.
   * - :doc:`knife`
     - |knife| is a command-line tool that provides an interface between a local |chef| repository and the |chef server|. 
   * - :doc:`plugin_knife`
     - A |knife| plugin is a set of one (or more) sub-commands that can be added to |knife| to support additional functionality that is not built-in to the base set of |knife| sub-commands.
   * - :doc:`config_rb_knife`
     - A |knife rb| file is used to specify the repository-specific configuration details for |knife|.
   * - :doc:`config_rb_metadata`
     - Metadata is stored in a file called |metadata rb| that lives at the top of each cookbook’s directory.
