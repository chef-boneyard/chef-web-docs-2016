.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets. 

|reporting| can be upgraded as part of a standalone or high availability configuration:

#. Contact |company_name| and get the package that is appropriate for your |chef server oec| server's platform and operating system.

#. Install the package on the same machines that are currently running |reporting|. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-reporting_1.0.0-1.ubuntu.10.04_amd64.deb

#. Reconfigure |reporting| services on each server:

   .. code-block:: bash

      $ opscode-reporting-ctl reconfigure
