.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|knife windows|

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
     - |chef| and |ohai| require more memory than the default setting allows. Increase this value to ``300MB``.
   * - ``MaxTimeoutms``
     - A bootstrap command can take longer than allowed by the default setting. Increase this value to ``1800000`` (30 minutes). 
   * - ``AllowUnencrypted``
     - Set this value to ``true`` for development and testing purposes.
   * - ``Basic``
     - Set this value to ``true`` for development and testing purposes. The ``knife windows`` subcommand supports |kerberos| and |windows basic| authentication schemes.

This plugin should be installed using |rubygems|.

This subcommand has the following syntax when connecting to one (or more) machines that run |windows|::

   knife winrm [ARGUMENT] (options)

And the following syntax when performing a bootstrap::

   knife bootstrap windows [ARGUMENT] (options)

