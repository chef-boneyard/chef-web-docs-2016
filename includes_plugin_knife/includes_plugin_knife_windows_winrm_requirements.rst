.. The contents of this file may be included in multiple topics (using the includes directive).
.. The contents of this file should be modified in a way that preserves its ability to appear in multiple topics.

This subcommand requires |windows remote management| to be installed, and then configured correctly, including ensuring the correct ports are open. For more information, see: http://msdn.microsoft.com/en-us/library/aa384372(v=vs.85).aspx and/or http://support.microsoft.com/kb/968930. Use the quick configuration option in |windows remote management| to allow outside connections and the entire network path from |knife| (and the workstation):

For versions of the knife windows plugin >= 0.8.2 running on a Windows workstation, the quickconfig settings rendered by the following command on the systems targeted for bootstrapping are sufficient.

.. code-block:: bash

   $ winrm quickconfig -q

.. note:: 

   **Negotiate / NTLM authentication support**

   If knife is executed from a Windows system, it is no longer necessary to make additional configuration of the WinRM listener on the target node to enable successful authentication from the workstation. It is sufficient to have a WinRM listener on the remote node configured according to the operating system's **winrm quickconfig** command default configuration. This is so because knife-windows now supports the Windows negotiate protocol including NTLM authentication, which matches the authentication requirements for the default WinRM listener configuration.

   If knife is executed on a non-Windows system, certificate authentication or Kerberos should be used instead via the kerberos_service and related options of the subcommands.

   NOTE: In order to use NTLM / Negotiate to authenticate as the user specified by the --winrm-user (-x) option, you must include the user's Windows domain when specifying the user name using the format domain\user where the backslash ('\') character separates the user from the domain. If an account local to the node is being used to access, . may be used as the domain:

   .. code-block:: bash

     knife bootstrap windows winrm web1.cloudapp.net -r 'server::web' -x 'proddomain\webuser' -P 'super_secret_password'

     knife bootstrap windows winrm db1.cloudapp.net -r 'server::db' -x '.\localadmin' -P 'super_secret_password'

The following |windows remote management| configuration settings should be updated for non-Windows systems, and can optionally be enabled for Windows targets:

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

To update these settings, run the following commands:

.. code-block:: bash

   $ winrm set winrm/config/winrs '@{MaxMemoryPerShellMB="300"}'

and:

.. code-block:: bash

   $ winrm set winrm/config '@{MaxTimeoutms="1800000"}'

and:

.. code-block:: bash

   $ winrm set winrm/config/service '@{AllowUnencrypted="true"}'

and then:

.. code-block:: bash

   $ winrm set winrm/config/service/auth '@{Basic="true"}'

Ensure that the |windows firewall| is configured to allow |windows remote management| connections between the workstation and the |chef server|. For example:

.. code-block:: bash

   $ netsh advfirewall firewall set rule name="Windows Remote Management (HTTP-In)" profile=public protocol=tcp localport=5985 remoteip=localsubnet new remoteip=any
