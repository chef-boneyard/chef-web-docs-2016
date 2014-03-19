.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

To set up the |chef manage| server add-on for a standalone configuration:

#. Contact |company_name| and get the package that is appropriate for your |chef server oec| server's platform and operating system
#. Install the package on the same machine that is running |chef server oec| 11.0.1 or higher. For example on |ubuntu|:

   .. code-block:: bash

      $ dpkg -i opscode-manage_1.0.0-1.ubuntu.10.04_amd64.deb

#. Disable the legacy web interface. Modify the |enterprise rb| file (located at ``/etc/opscode/private-chef.rb``) to disable the existing |service webui| service.

   For Standalone servers:

   .. code-block:: ruby
   
        opscode_webui['enable'] = false
   
   For Tiered and HA topologies:

   .. code-block:: ruby
   
      if PrivateChef['servers'][node['fqdn']]['role'] == 'frontend'
        opscode_webui['enable'] = false
      end      

   If the |enterprise rb| file does not exist, then create the file and add this setting to it.

#. Reconfigure the |chef server oec| server:

   .. code-block:: bash

      $ private-chef-ctl reconfigure

#. Reconfigure the |chef manage| server:

   .. code-block:: bash

      $ opscode-manage-ctl reconfigure

.. #. Verify the installation:
.. 
..    .. code-block:: bash
.. 
..       $ opscode-manage-ctl test
.. 
..    The |chef manage| should now be running and accessible by a web browser on port 443 (HTTPS). 

