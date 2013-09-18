=====================================================
Reporting
=====================================================

.. warning:: This is a draft for future functionality that will be added to Enterprise Chef.

.. include:: ../../includes_reporting/includes_reporting.rst

The Reporting Run
=====================================================
.. include:: ../../includes_reporting/includes_reporting_run.rst

Reference
=====================================================
The following sections describe the |knife| subcommands that can be used to generate reports about nodes and |chef client| runs.

.. warning:: WILL INCLUDE THESE WHEN FINISHED.

knife-reporting
-----------------------------------------------------
http://docs.opscode.com/plugin_knife_reporting.html

opscode-reporting-ctl
-----------------------------------------------------
http://docs.opscode.com/enterprise/ctl_opscode_reporting.html

Configuration Settings
-----------------------------------------------------
|reporting| relies on two settings in the |client rb| file:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``enable_reporting``
     - Indicates that the |chef client| will send data to the |chef server oec| server for use with |chef server reporting|. For example:
       ::
 
          enable_reporting true
   * - ``enable_reporting_url_fatals``
     - Indicates that the |chef client| run will fail if reporting data cannot be sent to the |chef server oec| server (for any reason). For example:
       ::
 
          enable_reporting_url_fatals false
