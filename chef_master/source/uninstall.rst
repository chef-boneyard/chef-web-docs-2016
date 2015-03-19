=====================================================
Uninstall
=====================================================

The following sections describe how to uninstall |chef|, add-ons, and other components.

|chef server_title|
=====================================================
.. include:: ../../includes_ctl_chef_server/includes_ctl_chef_server_uninstall.rst

|chef manage_title|
=====================================================
To uninstall the |chef manage|, do the following:

#. Run the following command:

   .. code-block:: bash
      
      $ opscode-manage-ctl cleanse

#. Use the package manager for the platform on which the |chef manage| is installed, and then uninstall the package named ``opscode-manage``.

|chef analytics_title|
=====================================================
.. include:: ../../includes_ctl_analytics/includes_ctl_analytics_uninstall.rst

|reporting_title|
=====================================================
.. include:: ../../includes_ctl_reporting/includes_ctl_reporting_uninstall.rst

|chef dk_title|
=====================================================
The |chef dk| can be uninstalled using the steps below that are appropriate for the platform on which the |chef dk| is installed.

|debian|
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_chef_dk_uninstall_ubuntu.rst

|mac os x|
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_chef_dk_uninstall_mac.rst

|redhat enterprise linux|
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_chef_dk_uninstall_redhat.rst

|windows|
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_chef_dk_uninstall_windows.rst