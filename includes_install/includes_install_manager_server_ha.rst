.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To set up the |chef manage| server for a high availability configuration:

#. Contact |company_name| and get the package that is appropriate for your |chef server oec| server's platform and operating system
#. Install the package on the same front end machines that are running |chef server oec|, version 11.0.1 or higher. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-manage_1.0.0-1.ubuntu.10.04_amd64.deb

#. Disable the legacy web interface. Modify the |enterprise rb| file (located at ``/etc/opscode/private-chef.rb``) to disable the existing |service webui| service:

   .. code-block:: bash
   
      if PrivateChef['servers'][node['fqdn']]['role'] == 'frontend'
        opscode_webui['enable'] = false
      end

   If the |enterprise rb| file does not exist, then create the file and add this setting to it. This step is required for each of the front end servers in the |chef server oec| deployment.

#. Reconfigure the |chef server oec| server:

   .. code-block:: bash

      $ private-chef-ctl reconfigure

   This step is required for each of the front end servers in the |chef server oec| deployment. For example, in a configuration with two back end servers and three front end servers, this command would need to be run on all three front end machines.

#. Reconfigure the |chef manage| server:

   .. code-block:: bash

      $ opscode-manage-ctl reconfigure

   This step is required for each of the front end servers in the |chef server oec| deployment.

.. #. Verify the installation:
.. 
..    .. code-block:: bash
.. 
..       $ opscode-manage-ctl test
.. 
..    The |chef manage| should now be running and accessible by a web browser on port 443 (HTTPS). 

