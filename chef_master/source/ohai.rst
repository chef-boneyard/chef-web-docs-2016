=====================================================
About Ohai
=====================================================

.. include:: ../../includes_ohai/includes_ohai.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Sub-command
     - Description
   * - :doc:`ohai_automatic_attributes`
     - An automatic attribute is a specific detail about a node, such as an IP address, a host name, a list of loaded kernel modules, the version(s) of available programming languages that are available, and so on.
   * - :doc:`ohai_attributes_list`
     - Some attributes are re-written by |ohai| during every |chef| run.
   * - :doc:`community_plugin_ohai`
     - There are many plugins available for |ohai| that are authored by members of the |chef| community.
   * - :doc:`ohai_install`
     - |ohai| is a requirement for |chef| and is installed whenever (and wherever) |chef| is installed. |ohai| can also be installed separately from |chef|.
   * - :doc:`ohai_plugins`
     - Create a custom |ohai| plugin or modify an existing one.
   * - Disable a plugin
     - .. include:: ../../step_ohai/step_ohai_disable_plugin.rst

.. toctree::
   :hidden:

   ohai_automatic_attributes
   ohai_attributes_list
   ohai_install
   ohai_plugins







