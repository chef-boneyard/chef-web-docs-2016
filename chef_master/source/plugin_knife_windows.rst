=====================================================
knife windows
=====================================================

.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows.rst

Install this plugin
=====================================================
.. include:: ../../step_knife_plugin/step_knife_plugin_rubygem_windows.rst

Requirements
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_winrm_requirements.rst

bootstrap windows ssh
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_ssh.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_ssh_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_ssh_options.rst

**Examples**

For example:

.. code-block:: bash

   $ knife bootstrap windows ssh ec2-50-xx-xx-124.compute-1.amazonaws.com -r 'role[webserver],role[production]' -x Administrator -i ~/.ssh/id_rsa

bootstrap windows winrm
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_winrm.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_winrm_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_bootstrap_windows_winrm_options.rst

**Examples**

For example:

.. code-block:: bash

   $ knife bootstrap windows winrm ec2-50-xx-xx-124.compute-1.amazonaws.com -r 'role[webserver],role[production]' -x Administrator -P 'super_secret_password'

winrm
=====================================================
.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_winrm.rst

**Syntax**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_winrm_syntax.rst

**Options**

.. include:: ../../includes_plugin_knife/includes_plugin_knife_windows_winrm_options.rst

**Examples**

For example, to find the uptime of all web servers, enter:

.. code-block:: bash

   $ knife winrm "role:web" "net stats srv" -x Administrator -P password

Or, to force a |chef| run:

.. code-block:: bash

   knife winrm 'ec2-50-xx-xx-124.amazonaws.com' 'chef-client -c c:/chef/client.rb' -m -x admin -P 'password'
   ec2-50-xx-xx-124.amazonaws.com [date] INFO: Starting Chef Run (Version 0.9.12)
   ec2-50-xx-xx-124.amazonaws.com [date] WARN: Node ip-0A502FFB has an empty run list.
   ec2-50-xx-xx-124.amazonaws.com [date] INFO: Chef Run complete in 4.383966 seconds
   ec2-50-xx-xx-124.amazonaws.com [date] INFO: cleaning the checksum cache
   ec2-50-xx-xx-124.amazonaws.com [date] INFO: Running report handlers
   ec2-50-xx-xx-124.amazonaws.com [date] INFO: Report handlers complete

Where in the examples above, ``[date]`` represents the date and time the long entry was created. For example: ``[Fri, 04 Mar 2011 22:00:53 +0000]``.
