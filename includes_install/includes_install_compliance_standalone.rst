.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Standalone
=====================================================
The standalone installation of |chef compliance| server creates a working installation on a single server. This installation is also useful when you are installing |chef compliance| in a virtual machine, for proof-of-concept deployments, or as a part of a development or testing loop.

To install the |chef compliance| server:

#. Download the package from http://downloads.chef.io/compliance/.
#. Upload the package to the machine that will run the |chef compliance| server, and then record its location on the file system. The rest of these steps assume this location is in the ``/tmp`` directory
#. These commands require ``root`` privileges. For |redhat| and |centos| 6:
#. Install the |chef compliance| package on the server, using the name of the package provided by |company_name|. For |redhat| and |centos| 6:

   .. code-block:: bash

      $ rpm -Uvh /tmp/chef-compliance-<version>.rpm

   For |ubuntu|:

   .. code-block:: bash

      $ dpkg -i /tmp/chef-compliance-<version>.deb

   After a few minutes, the |chef compliance| will be installed.

#. Run the following to start all of the services:

   .. code-block:: bash

      $ chef-compliance-ctl reconfigure

#. Run the following command to create an administrator:

   .. code-block:: bash

      $ chef-compliance-ctl user-create username 'password'

   For example:

   .. code-block:: bash

      $ chef-compliance-ctl user-create admin 'pA$$word'

#. Restart the services once a user has been created:

   .. code-block:: bash

      $ chef-compliance-ctl restart
