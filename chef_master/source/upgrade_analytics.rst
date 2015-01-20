=====================================================
Upgrade to |chef analytics_title| 1.1
=====================================================
The following sections describe the upgrade process from |chef analytics| 1.0.4 to |chef analytics| 1.1.

Standalone
=====================================================
This section describes the upgrade process for a standalone configuraiton:

#. Stop the machine:

   .. code-block:: bash
      
      $ opscode-analytics-ctl stop

#. Run |debian dpkg| or |rpm|. For |debian dpkg|:

   .. code-block:: bash
      
      $ dpkg -i /path/to/opscode-analytics-<version>.deb
   
   For |rpm|:

   .. code-block:: bash
      
      $ rpm /path/to/opscode-analytics-<version>.rpm

#. Run the pre-flight check:

   .. code-block:: bash
      
      $ opscode-analytics-ctl preflight-check

#. Reconfigure the server:

   .. code-block:: bash

      $ opscode-analytics-ctl reconfigure

#. Restart the machine:

   .. code-block:: bash
      
      $ opscode-analytics-ctl restart

