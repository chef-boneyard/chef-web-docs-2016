=====================================================
Install the |chef dk_title|
=====================================================



The |omnibus installer| is used to set up the |chef dk| on a workstation, including the |chef client| itself, an embedded version of |ruby|, |rubygems|, |open ssl|, key-value stores, parsers, libraries, command line utilities, and community tools such as |kitchen|, |berkshelf|, and |chef spec|. The |omnibus installer| puts everything into a unique directory (``opt/chefdk/``) so that these components will not interfere with other applications that may be running on the target machine. Once installed, the |chef client| requires a few more configuration steps before it can be run as a workstation.

.. note:: The |omnibus installer| requires that an installation be done as a root user.


Install on a Workstation
=====================================================
The following sections describe how to install the |chef dk| on a workstation:

#. Identify the |chef server| type: hosted or on-premises
#. Review the prerequisites
#. Select the |omnibus installer| for the desired platform
#. Run the |omnibus installer|
#. Set the system |ruby|
#. Install |git|
#. Set up the |chef repo|
#. Create the |chef repo hidden| directory
#. Get the .pem files and |knife rb| files
#. Move files to the |chef repo hidden| directory
#. Add omnibus |ruby| to the $PATH environment variable
#. Get |ssl| certificates from the |chef server|
#. Verify the |chef client| install

See the following sections for more information about each step.

Review prerequisites
-----------------------------------------------------
Ensure that the workstation meets all of the software prerequisites and that it has access to a |chef server| and to a machine that can host a node.

The following items are prerequisites for installing the |chef client| on a workstation:

* A computer running |unix|, |linux|, |mac os x| or |windows|
* |apple xcode| is installed on machines running |mac os x|; this application can be downloaded from |apple| for free
* A |github| account; the |chef repo| must be downloaded and/or cloned from |github|
* Access to a |chef server|: a hosted |chef server| account or an on-premises |chef server|
* Access to a machine (physical or virtual) that can be used as the first node; the |fqdn| or IP address for a machine is required by the |subcommand knife bootstrap| command during a bootstrap operation

Select a Package
-----------------------------------------------------
The bits for the |chef client| |omnibus installer| are available as a download from |company_name|.

To download the |omnibus installer| for the |chef client|:

#. Go to: http://downloads.chef.io/chef-dk/.

#. Select the operating system, version, and architecture appropriate for your environment.

#. Click **Download**.

Run the Installer
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_chef_dk.rst

Set System |ruby|
-----------------------------------------------------
.. include:: ../../step_ruby/step_ruby_set_system_ruby_as_chefdk_ruby.rst

Install |git|
-----------------------------------------------------
An open source distributed version control system called |git| must be installed before the |chef repo| can be cloned to the workstation from |github|. 

To install |git|:

#. Go to the following URL: https://help.github.com/articles/set-up-git.
   
#. Follow the directions, install |git| (http://git-scm.com/downloads), and then complete the remaining configuration steps on that page. 

.. note:: It is not necessary to create or fork a repository in order to clone the |chef repo| from |github|.

Set up the |chef repo|
-----------------------------------------------------
There are two ways to create the |chef repo|:

* Use the starter kit built into the |chef server| web user interface
* Manually, but using the |chef manage|
* Manually, but using the |chef server ctl| command line tool

Starter Kit
+++++++++++++++++++++++++++++++++++++++++++++++++++++
If you have access to |chef server| (hosted or on premises), you can download the starter kit. The starter kit will create the necessary configuration files---the |chef repo hidden| directory, |knife rb|, the ORGANIZATION-validator.pem, and USER.pem files) with the correct information that is required to interact with the |chef server|. Simply download the starter kit and then move it to the desired location on your workstation.

Manually (w/ Webui)
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following steps to manually set up the |chef repo| and to use the |chef manage| to get the .pem and |knife rb| files.

**Clone the chef-repo**

The |chef repo| on |github| must be cloned to every workstation that will interact with a |chef server|.

To clone the |chef repo|:

#. In a command window, open the home directory:

   .. code-block:: bash

      $ cd ~

   and then clone the |chef repo|:

   .. code-block:: bash

      $ git clone git://github.com/chef/chef-repo.git

#. While the |chef repo| is being cloned on the local machine, the command window will show something like the following:

   .. code-block:: bash

      Cloning into 'chef-repo'...
      remote: Counting objects: 199, done.
      remote: Compressing objects: 100% (119/119), done.
      remote: Total 199 (delta 71), reused 160 (delta 47)
      Receiving objects: 100% (199/199), 30.45 KiB, done.
      Resolving deltas: 100% (71/71), done.

#. After the |chef repo| has been cloned, the following folder structure will be present on the local machine::

      chef-repo/
         certificates/
         config/
         cookbooks/
         data_bags
         environments/
         roles/

.. note:: For more information about how to use the ``git`` command, see http://git-scm.com/docs.

**Create .chef Directory**

The |chef repo hidden| directory is used to store three files:

* |knife rb|
* |organization pem|
* |user pem|

Where ``ORGANIZATION`` and ``USER`` represent strings that are unique to each organization. These files must be present in the |chef repo hidden| directory in order for a workstation to be able to connect to a |chef server|.

To create the |chef repo hidden| directory:

#. In a command window, enter the following:

   .. code-block:: bash

      sudo mkdir -p ~/chef-repo/.chef

   .. note:: ``sudo`` is not always required, but it often is.

#. After the |chef repo hidden| directory has been created, the following folder structure will be present on the local machine::

      chef-repo/
         .chef/        << the hidden directory
         certificates/
         config/
         cookbooks/
         data_bags
         environments/
         roles/

#. Add ``.chef`` to the ``.gitignore`` file to prevent uploading the contents of the ``.chef`` folder to |github|. For example:

   .. code-block:: bash

      $ echo '.chef' >> ~/chef-repo/.gitignore


**Get Config Files**

For a workstation that will interact with the |chef server| (including the hosted |chef server|), log on and download the following files:

* |knife rb|. This configuration file can be downloaded from the **Organizations** page.
* |organization pem|. This private key can be downloaded from the **Organizations** page.
* |user pem|. This private key an be downloaded from the **Change Password** section of the **Account Management** page.

**Move Config Files**

The |knife rb|, |organization pem|, and |user pem| files must be moved to the |chef repo hidden| directory after they are downloaded from the |chef server|.

To move files to the |chef repo hidden| directory:

#. In a command window, enter each of the following:

   .. code-block:: bash

      cp /path/to/knife.rb ~/chef-repo/.chef

   and:

   .. code-block:: bash

      cp /path/to/ORGANIZATION-validator.pem ~/chef-repo/.chef

   and:

   .. code-block:: bash

      cp /path/to/USERNAME.pem ~/chef-repo/.chef

   where ``/path/to/`` represents the path to the location in which these three files were placed after they were downloaded.

#. Verify that the files are in the |chef repo hidden| folder.


Manually (w/o Webui)
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Use the following steps to manually set up the |chef repo|, create the |organization pem| and |user pem| files with the |chef server ctl| command line tool, and then creating the |knife rb| file.

**Clone the chef-repo**

The |chef repo| on |github| must be cloned to every workstation that will interact with a |chef server|.

To clone the |chef repo|:

#. In a command window, open the home directory:

   .. code-block:: bash

      $ cd ~

   and then clone the |chef repo|:

   .. code-block:: bash

      $ git clone git://github.com/chef/chef-repo.git

#. While the |chef repo| is being cloned on the local machine, the command window will show something like the following:

   .. code-block:: bash

      Cloning into 'chef-repo'...
      remote: Counting objects: 199, done.
      remote: Compressing objects: 100% (119/119), done.
      remote: Total 199 (delta 71), reused 160 (delta 47)
      Receiving objects: 100% (199/199), 30.45 KiB, done.
      Resolving deltas: 100% (71/71), done.

#. After the |chef repo| has been cloned, the following folder structure will be present on the local machine::

      chef-repo/
         certificates/
         config/
         cookbooks/
         data_bags
         environments/
         roles/

.. note:: For more information about how to use the ``git`` command, see http://git-scm.com/docs.

**Create .chef Directory**

The |chef repo hidden| directory is used to store three files:

* |knife rb|
* |organization pem|
* |user pem|

Where ``ORGANIZATION`` and ``USER`` represent strings that are unique to each organization. These files must be present in the |chef repo hidden| directory in order for a workstation to be able to connect to a |chef server|.

To create the |chef repo hidden| directory:

#. In a command window, enter the following:

   .. code-block:: bash

      sudo mkdir -p ~/chef-repo/.chef

   .. note:: ``sudo`` is not always required, but it often is.

#. After the |chef repo hidden| directory has been created, the following folder structure will be present on the local machine::

      chef-repo/
         .chef/        << the hidden directory
         certificates/
         config/
         cookbooks/
         data_bags
         environments/
         roles/

#. Add ``.chef`` to the ``.gitignore`` file to prevent uploading the contents of the ``.chef`` folder to |github|. For example:

   .. code-block:: bash

      $ echo '.chef' >> ~/chef-repo/.gitignore

**Create an Organization**

On the |chef server| machine, run the following command:

.. code-block:: bash

   $ chef-server-ctl org-create ORG_NAME ORG_FULL_NAME -f FILE_NAME

where

* |name_rules org| For example: ``chef``
* |name_rules org_full| For example: ``"Chef Software, Inc."``
* ``-f FILE_NAME`` will write the private key to ``FILE_NAME`` instead of printing the private key to ``STDOUT``

For example:

.. code-block:: bash

   $ chef-server-ctl org-create chef "Chef Software, Inc." -f /tmp/chef.key

**Create a User**

On the |chef server| machine, run the following command:

.. code-block:: bash

   $ chef-server-ctl user-create USER_NAME FIRST_NAME LAST_NAME EMAIL PASSWORD -f FILE_NAME

where

* ``-f FILE_NAME`` will write the private key to ``FILE_NAME`` instead of printing the private key to ``STDOUT``

For example:

.. code-block:: bash

   $ chef-server-ctl user-create grantmc Grant McLennan grantmc@chef.io p@s5w0rD! -f /tmp/grantmc.key

**Move .pem Files**

The |organization pem| and |user pem| files must be moved to the |chef repo hidden| directory after they are downloaded from the |chef server|.

To move files to the |chef repo hidden| directory:

#. In a command window, enter each of the following:

   .. code-block:: bash

      cp /path/to/ORGANIZATION-validator.pem ~/chef-repo/.chef

   and:

   .. code-block:: bash

      cp /path/to/USERNAME.pem ~/chef-repo/.chef

   where ``/path/to/`` represents the path to the location in which these three files were placed after they were downloaded.

#. Verify that the files are in the |chef repo hidden| folder.

**Create the knife.rb File**

The |knife rb| file must be created in the |chef repo hidden| folder:

.. code-block:: ruby

   current_dir = File.dirname(__FILE__)
   log_level                :info
   log_location             STDOUT
   node_name                "mclennan01"
   client_key               "#{current_dir}/grantmc.pem"
   validation_client_name   "chef-validator"
   validation_key           "#{current_dir}/chef.pem"
   chef_server_url          "https://api.chef.io/organizations/chef"
   cache_type               'BasicFile'
   cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
   cookbook_path            ["#{current_dir}/../cookbooks"]


Add |ruby| to $PATH
-----------------------------------------------------
The |chef client| includes a stable version of |ruby| as part of the |omnibus installer|. The path to this version of |ruby| must be added to the ``$PATH`` environment variable and saved in the configuration file for the command shell (|bash|, |csh|, and so on) that is used on the workstation. In a command window, type the following:

.. code-block:: bash

   echo 'export PATH="/opt/chefdk/embedded/bin:$PATH"' >> ~/.configuration_file && source ~/.configuration_file

where ``configuration_file`` is the name of the configuration file for the specific command shell. For example, if |bash| were the command shell and the configuration file were named ``bash_profile``, the command would look something like the following:

.. code-block:: bash

   echo 'export PATH="/opt/chefdk/embedded/bin:$PATH"' >> ~/.bash_profile && source ~/.bash_profile


.. warning:: On |windows|, ``C:/opscode/chefdk/bin`` must be before ``C:/opscode/chefdk/embedded/bin`` in the ``PATH``.

Get |ssl| Certificates
-----------------------------------------------------
|chef server| 12 enables |ssl| verification by default for all requests made to the server, such as those made by |knife| and the |chef client|. The certificate that is generated during the installation of the |chef server| is self-signed, which means there isn't a signing |ca| to verify. In addition, this certificate must be downloaded to any machine from which |knife| and/or the |chef client| will make requests to the |chef server|.

Use the |subcommand knife ssl_fetch| command to pull the |ssl| certificate down from the |chef server|:

.. code-block:: bash

   knife ssl fetch

See `SSL Certificates <http://docs.chef.io/chef_client_security.html#ssl-certificates>`__ for more information about how |knife| and the |chef client| use |ssl| certificates generated by the |chef server|.

Verify Install
-----------------------------------------------------
A workstation is installed correctly when it is able to use |knife| to communicate with the |chef server|.

To verify that a workstation can connect to the |chef server|:

#. In a command window, navigate to the |chef repo|:

   .. code-block:: bash

      cd ~/chef-repo

#. In a command window, enter the following:

   .. code-block:: bash

      knife client list

   to return a list of clients (registered nodes and workstations) that have access to the |chef server|. For example:

   .. code-block:: bash

       workstation
       registered_node





Uninstall
=====================================================
The |chef dk| can be uninstalled using the following steps.

|debian|
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_chef_dk_uninstall_ubuntu.rst

|mac os x|
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_chef_dk_uninstall_mac.rst

|redhat enterprise linux|
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_chef_dk_uninstall_redhat.rst

|windows|
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_chef_dk_uninstall_windows.rst