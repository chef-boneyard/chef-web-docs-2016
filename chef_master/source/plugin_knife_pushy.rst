=====================================================
knife pushy
=====================================================

.. include:: ../../includes_plugin_knife/includes_plugin_knife_pushy.rst

.. note:: Review the list of `common options <http://docs.opscode.com/knife_common_options.html>`_ available to this (and all) |knife| subcommands and plugins.

Install this plugin
=====================================================
.. include:: ../../step_plugin_knife/step_plugin_knife_pushy_install_rubygem.rst


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


To search for a specific set of nodes (named ``chico``, ``harpo``, ``groucho``, ``gummo``, ``zeppo``), and where 90% of those nodes must be available, enter:

.. code-block:: bash

   $ knife job start --quorum 90% 'chef-client' chico harpo groucho gummo zeppo

to return something similar to:

.. code-block:: bash

   Started. Job ID: GUID12345abc
     quorum_failed
     Command: chef-client
     Created_at: date
     unavailable: zeppo
     was_ready:
       gummo
       groucho
       chico
       harpo
     On_timeout: 3600
     Status: quorum_failed

.. note:: If quorum had been set at 80% (``--quorum 80%``), then quorum would have passed with the previous example.



Use the ``knife job start`` subcommand to run a job with the following syntax:

.. code-block:: bash

   $ knife job start job_name node_name

For example, to run a job named ``add-glasses`` against a node named "ricardosalazar", enter the following:

.. code-block:: bash

   $ knife job start add-glasses 'ricardosalazar'


 


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
