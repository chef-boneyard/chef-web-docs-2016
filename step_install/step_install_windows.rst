.. This is an included how-to. 


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

   .. note:: The |chef client| must be run as a service for it to be able to regularly check in with the |chef server|. Select the **Chef Client Service** option to have the MSI configure the |chef client| as a service.

then:

   .. image:: ../../images/step_install_windows_04.png

then:

   .. image:: ../../images/step_install_windows_05.png

then:

   .. image:: ../../images/step_install_windows_06.png

