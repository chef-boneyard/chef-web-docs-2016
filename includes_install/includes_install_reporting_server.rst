.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To set up the |reporting| server for a standalone configuration:

#. Contact |company_name| and get the package that is appropriate for the |chef server| platform and operating system
#. Install the package on the same machine that is running |chef server| 11.0.1 or higher. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-reporting_1.0.0-1.ubuntu.10.04_amd64.deb

#. Reconfigure the |chef server|:

   .. code-block:: bash

      $ private-chef-ctl reconfigure

#. Reconfigure the |reporting| server:

   .. code-block:: bash

      $ opscode-reporting-ctl reconfigure

.. #. Restart the |reporting| components:
.. 
..    .. code-block:: bash
.. 
..       $ private-chef-ctl restart opscode-reporting

#. Verify the installation:

   .. code-block:: bash

      $ opscode-reporting-ctl test