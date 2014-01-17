.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

To set up the |push jobs| server:

#. Contact |company_name| and get the package that is appropriate for your |chef server oec| server's platform and operating system
#. Install the |push jobs| servers. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-push-jobs-server_0.0.1+20130307070157.git.98.c04f587-1.ubuntu.10.04_amd64.deb

   This step is required on each of the servers in the |chef server oec| deployment. For example, in a configuration with two back end servers and three front end servers, this command would need to be run on all five machines.

#. TCP protocol ports 10000-10003 must be open. This allows the |push jobs| clients to communicate with the |push jobs| server. (In a configuration with both front and back ends, these ports only need to be open on the back end servers.)

#. Reconfigure the |push jobs| servers:

   .. code-block:: bash

      $ opscode-push-jobs-server-ctl reconfigure

   This step is required for each of the servers in the |chef server oec| deployment. After this has been completed, run the following command on each of the back end servers:

   .. code-block:: bash

      $ private-chef-ctl reconfigure

   This ensures that the |keepalived| scripts are regenerated so they are aware of |push jobs|.

#. Restart the |push jobs| components:

   .. code-block:: bash

      $ private-chef-ctl restart opscode-pushy-server

#. Verify the installation:

   .. code-block:: bash

      $ opscode-push-jobs-server-ctl test
