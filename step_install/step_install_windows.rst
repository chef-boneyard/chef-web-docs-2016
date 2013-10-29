To install the |chef client| on |windows|, do the following:

#. Go to http://www.opscode.com/chef/install.

#. Click the **Chef Client** tab.

#. Select **Windows**, a version, and an architecture.

#. Under **Downloads**, select the version of the |chef client| to download, and then click the link that appears below to download the package.

#. Ensure that the MSI is on the target node.

#. Run the MSI package and use all the default options:

   .. image:: ../../images/step_install_windows_01.png

then:

   .. image:: ../../images/step_install_windows_02.png

then:

   .. image:: ../../images/step_install_windows_03.png

then:

   .. image:: ../../images/step_install_windows_04.png

then:

   .. image:: ../../images/step_install_windows_05.png

then:

   .. image:: ../../images/step_install_windows_06.png

   .. note:: The |chef client| needs to be run as a service for it to be able to regularly check in with the |chef server|. This is an option in the MSI that can be selected manually when running the MSI or a command line that is run after the MSI has finished installing the |chef client|.

#. After the |chef client| is installed (and if this option was not selected in the MSI), run the following command to enable the |chef client| to run as a service:

   .. code-block:: bash
   
      $ chef-server-mgr -a install