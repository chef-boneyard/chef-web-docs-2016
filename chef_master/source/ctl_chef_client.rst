=====================================================
chef-client
=====================================================

.. include:: ../../includes_chef/includes_chef_client.rst

.. include:: ../../includes_ctl_chef_client/includes_ctl_chef_client.rst

.. note:: .. include:: ../../includes_config/includes_config_rb_client.rst

Options
=====================================================
.. include:: ../../includes_ctl_chef_client/includes_ctl_chef_client_options.rst

Run with Elevated Privileges
=====================================================
The |chef client| often needs to run with elevated privileges to get most recipes to converge correctly. On Unix and Unix-like operating systems this is done by running the command as root. On Windows this is done by running command prompt as administrator.

Linux
-----------------------------------------------------
On Linux, you may see this error if you do not have the correct permissions to run chef-client:

.. code-block:: bash

   $ chef-client
   [Tue, 29 Nov 2011 19:46:17 -0800] INFO: *** Chef 10.X.X ***
   [Tue, 29 Nov 2011 19:46:18 -0800] WARN: Failed to read the private key /etc/chef/client.pem: #<Errno::EACCES: Permission denied - /etc/chef/client.pem>

You can resolve this by running the command as root. There are a few ways you can accomplish this:

* Logging in as root and running chef-client
* Using su to become the root user and running chef-client:

   .. code-block:: bash

      su
      chef-client

* Using the sudo utility

   .. code-block:: bash

      sudo chef-client

You could also resolve this by giving your user access to read /etc/chef and the files accessed by chef-client, but this is not advised as most recipes will need super user privileges to complete correctly.

Windows
-----------------------------------------------------
In Windows, this issue normally fails silently. It appears that chef-client converged correctly, but when you go to check the changes they have not been made.

If you see this occur, follow one of these options to run chef-client as administrator and see if this resolves the issue.

Login into the Administrator account. NOTE: This is different than an account in the Administrator's group.
Run the chef-client process from the Administrator account while being logged into another account (you will be prompted for your Administrator password). You can do this by entering this command into a command prompt window:

.. code-block:: bash

   runas /user:Administrator "cmd /C chef-client"

Open a command prompt using UAC by right clicking on command prompt and selecting 'run as administrator':

Once the command prompt is open, you can run chef-client.

Examples
=====================================================

**Start a Chef run when the chef-client is running as a daemon**

.. include:: ../../step_ctl_chef_client/step_ctl_chef_client_start_chef_run_daemon.rst

**Start a Chef run manually**

.. include:: ../../step_ctl_chef_client/step_ctl_chef_client_start_chef_run_manual.rst