.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Log files are available from within the |azure portal|:

#. Select **Virtual Machines** in the left pane of the |azure portal|.

#. Select the virtual machine that has the error status.

#. Click the **Connect** button at the bottom of the portal to launch a |windows remote desktop| session, and then log in to the virtual machine.

#. Start up a |windows powershell| command shell.

   .. code-block:: bash

      $ cd c:\windowsazure\logs
        ls –r chef*.log

#. This should display the log files, including the |chef client| log file.
