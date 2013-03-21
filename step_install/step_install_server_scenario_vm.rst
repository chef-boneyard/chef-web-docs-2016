.. This is an included how-to. 

To install |chef server 11| on a virtual machine:

#. Go to http://www.opscode.com/chef/install. Select a platform, version, and architecture, and then choose the version of the |chef server| to be downloaded. The name of the package will be displayed after the version is selected. Right-click the name of the package and copy the link location.

   .. image:: ../../images/step_install_server_open_download_page.png

#. Download the |chef server| package to the virtual machine using the following command:

   .. code-block:: bash

      $ wget https://opscode-omnitruck-release.s3.amazonaws.com/ubuntu/12.04/x86_64/chef-server_11.0.6-1.ubuntu.12.04_amd64.deb

   where the URL is the copied link location from the previous step. As the download progresses, the command window will appear similar to the following:

   .. image:: ../../images/step_install_server_open_download_chef_server.png

#. When the download is finished, install the |chef server| using the following command:

   .. code-block:: bash

      $ sudo dpkg -i chef-server_11.0.6-1.ubuntu.12.04_amd64.deb

   .. image:: ../../images/step_install_server_open_install_chef_server.png

#. After the |chef server| is installed, run the ``reconfigure`` command:

   .. code-block:: bash

      $ sudo chef-server-ctl reconfigure

   This action will take steps to ensure that the |chef server| is installed and configured correctly. Many of these actions are actual |chef| recipes being run by an instance of |chef solo|. While these actions are being taken, the command window will appear similar to the following:

   .. image:: ../../images/step_install_server_open_pedant_recipes.png

#. After the |chef server| is reconfigured, verify that the network adapter in the virtual machine is set to "bridge mode".

   .. image:: ../../images/step_install_server_open_set_bridge_mode.png

#. Shut down, and then restart the network adapter using the following commands:

   .. code-block:: bash

      $ sudo ifdown eth0

   and then:

   .. code-block:: bash

      $ sudo ifup eth0

#. Get the IP address for the |chef server| by running the following command:

   .. code-block:: bash

      $ ifconfig

   (The IP address is identified by the ``inet addr`` field.)

#. Open a browser and then enter the IP address as the URL for the |chef server|. The |chef server| requires HTTPS, so the URL would be something similar to the following: ``https://123.45.6.789``.

#. In the initial logon page for the |chef server|, use the default user name (``admin``) and password (``p@ssw0rd1``) to log on.

   .. image:: ../../images/step_install_server_open_login.png

#. Change the default password.




