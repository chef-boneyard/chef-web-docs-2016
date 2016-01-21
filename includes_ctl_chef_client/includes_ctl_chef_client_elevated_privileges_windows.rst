.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for chef-client.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


On |windows|, running without elevated privileges (when they are necessary) is an issue that fails silently. It will appear that the |chef client| completed its run successfully, but the changes will not have been made. When this occurs, do one of the following to run the |chef client| as the administrator:

* Log in to the administrator account. (This is not the same as an account in the administrator's security group.)

* Run the |chef client| process from the administrator account while being logged into another account. Run the following command:

   .. code-block:: bash

      $ runas /user:Administrator "cmd /C chef-client"

   This will prompt for the administrator account password.

* Open a command prompt by right-clicking on the command prompt application, and then selecting **Run as administrator**. After the command window opens, the |chef client| can be run as the administrator



