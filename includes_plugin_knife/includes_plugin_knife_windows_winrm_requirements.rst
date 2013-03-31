.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This subcommand requires |windows remote management| to be installed, and then configured correctly. For more information, see: http://msdn.microsoft.com/en-us/library/aa384426(v=vs.85).aspx and/or http://support.microsoft.com/kb/968930. Use the quick configuration option in |windows remote management| to allow outside connections and the entire network path from |knife| (and the workstation):

.. code-block:: bash

   $ winrm quickconfig -q

The following |windows remote management| configuration settings should be updated for |chef|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``MaxMemoryPerShellMB``
     - |winrm_max_memory_per_shell_mb|
   * - ``MaxTimeoutms``
     - |winrm_max_timeouts|
   * - ``AllowUnencrypted``
     - |winrm_allow_unencrypted|
   * - ``Basic``
     - |winrm_basic|

