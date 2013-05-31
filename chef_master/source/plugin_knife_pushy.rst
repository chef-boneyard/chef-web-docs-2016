=====================================================
knife pushy
=====================================================

.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy.rst

.. note:: Review the list of :doc:`common options </knife_common_options>` available to this (and all) |knife| subcommands and plugins.

Install this plugin
=====================================================
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_pushy.rst


job list
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy_job_list.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy_job_list_syntax.rst

Options
-----------------------------------------------------
|no_options|

Examples
-----------------------------------------------------
None.


job start
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy_job_start.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy_job_start_syntax.rst

Options
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy_job_start_options.rst

Examples
-----------------------------------------------------
For example, to search for nodes assigned the role "webapp", and where 90% of those nodes must be available, enter:

.. code-block:: bash

   $ knife job start -quorum 90% 'chef-client' --search 'role:webapp`


job status
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy_job_status.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy_job_status_syntax.rst

Options
-----------------------------------------------------
|no_options|

Examples
-----------------------------------------------------
For example, to view the status of a job that has the identifier of "235", enter:

.. code-block:: bash

   $ knife job status 235

to return something similar to:

.. code-block:: bash

   Node name   Status      Last updated
   foo         Failed      2012-05-04 00:00
   bar         Done        2012-05-04 00:01


node status
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy_node_status.rst

Syntax
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy_node_status_syntax.rst

Options
-----------------------------------------------------
|no_options|

Examples
-----------------------------------------------------
None.
