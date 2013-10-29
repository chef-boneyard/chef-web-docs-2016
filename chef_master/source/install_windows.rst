=====================================================
Install the |chef client| on |windows|
=====================================================

The |chef client| can be installed on machines running |windows| in the following ways:

* By using the :doc:`windows </plugin_knife_windows>` plugin to bootstrap the |chef client|; this process requires that the target node be accessible via HTTP or HTTPS
* By downloading the |chef client| to the target node, and then running the |microsoft installer package| locally
* By using an existing process already in place for managing |windows| machines, such as |windows server system_center|

The |chef client| must be run as a service for it to be able to run at a defined interval. If the |chef client| is not run as a service, then the |chef client| must be run from the command line.

.. note:: Verify that ``C:\opscode\chef\bin`` and ``embedded\bin`` are added to the ``PATH`` environment variable in |windows|. This is typically set during the installation of the |chef client|; if these values are not in the ``PATH`` environment variable, the |chef client| will not run properly.

Use knife-windows
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows.rst

For more information about the |subcommand knife windows| plugin, see :doc:`windows </plugin_knife_windows>`.

|microsoft msiexec|
-----------------------------------------------------
.. include:: ../../includes_windows/includes_windows_msiexec.rst

Use MSI Installer
=====================================================
A |microsoft installer package| is available for installing the |chef client| on a |windows| machine.

.. include:: ../../step_install/step_install_windows.rst

Use an Existing Process
=====================================================
Many organizations already have processes in place for managing the applications and settings on various |windows| machines. For example, |windows server system_center|. The |chef client| can be installed using this method.