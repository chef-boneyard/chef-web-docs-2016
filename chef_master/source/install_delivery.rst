=====================================================
Installing |chef delivery|
=====================================================

This topic guides you through setting up |chef delivery| with the ``delivery-cluster`` cookbook and Chef Provisioning, and validating the installation, once |chef delivery| is set up. With the ``delivery-cluster`` cookbook, you install the |chef delivery| cluster on your own infrastructure using |chef provisioning| and your license key. We currently support two install methods with ``delivery-cluster``:

* Install using |amazon aws|. This method of provisioning takes care of creating most of the resources you need for |chef delivery|, and setting them up
* Install using SSH. This method is used in all environments other than |amazon aws| and assumes that you have created machines and have SSH access with passwordless |sudo cmd| on the boxes

An important consideration in picking your install method/location is network access. If you will be integrating with any APIs make sure you can access them from the environment in which |chef delivery| is installed. Often times we set up a cluster only to find an internal API is not available. Consider things like |jenkins|, or your own internal deployment tool, etc.

About |chef delivery| 
=====================================================
|chef delivery| is written in |erlang| and has its own embedded source control manager (|git|). Cookbook changes are introduced to |chef delivery| and run through a pipeline consisting of a number of stages, each comprised of a number of phases implemented through recipes. The final stage is Delivered, where the validated change is delivered to the |chef server| to be provisioned to the infrastructure, or pushed to |supermarket| or |github|.

|chef delivery| uses |push jobs| as a job dispatcher to communicate with the build nodes through the |chef server|. Any number of build nodes may be used, but |company_name| recommends a minimum of three build nodes to take advantage of the parallel phases that |chef delivery| runs: Unit, Lint, and Syntax, which are all part of the Verify stage.

The build nodes use API callbacks to communicate the results of each phase run to the |chef delivery| server.

.. image:: ../../images/delivery_architecture.svg
   :width: 600px
   :align: center

Process Overview
=====================================================
The process for installing |chef delivery| using the ``delivery-cluster`` cookbook (a cookbook for installing and configuring |chef delivery|) involves the following tasks:

* Create and configure a dedicated provisioning node
* Configure the ``delivery-cluster`` cookbook to use either |amazon aws| provisioning or SSH provisioning 
* Run automation for ``delivery-cluster``, which sets up a full |chef delivery| cluster and gives you login credentials
* Validate the |chef delivery| server installation
* Set up your workstation to develop projects in |chef delivery|
* Configure |chef delivery| 
* Verify the installation by creating a cookbook and kicking off a pipeline

Prerequisites 
=====================================================
|chef delivery| requires a license from |company_name| to install.

Supported Platforms
-----------------------------------------------------
|chef delivery| may be run on the following platforms. Do not mix platform versions within the |chef delivery| cluster.

  .. list-table::
     :widths: 250 250      
     :header-rows: 1

     * - OS
       - Versions
     * - Ubuntu
       - 12.04, 14.04
     * - Centos
       - 6.5, 6.6, 7
     * - Redhat
       - 6.5, 6.6, 7

Infrastructure
-----------------------------------------------------
|chef delivery| has the following infrastructure requirements:

  .. list-table::
     :widths: 150 100 100 100      
     :header-rows: 1

     * - Function
       - vCPU
       - RAM
       - Free disk space (in /var)
     * - Provisioning Node
       - 1 (2.5GHz)
       - 1GB
       - 8GB
     * - Delivery Server
       - 4 
       - 8GB 
       - 80GB
     * - Chef Server (must be v12). See additional information in note, below.
       - 4
       - 8GB
       - 80GB
     * - Supermarket Server
       - 4
       - 8GB
       - 80GB
     * - Build Nodes (at least 3, one for each Verify phase: Lint, Syntax, and Functional)
       - 2
       - 4GB
       - 60GB  
     * - Infrastructure Nodes (at least 4, one for each environment stage: Acceptance, Union, Rehearsal, and Delivered)
       - 2 (for test purposes)
       - 4GB (for test purposes)
       - 60GB (for test purposes) 

.. note:: If you want to use your existing |chef server| in the |chef delivery| cluster, the version of the |chef server| must be 12.2, it cannot have a high availability configuration. In addition, a special entry must be made to the environments configuration file (``environments/NAME_OF_ENV.json``) simillar to:

   .. code-block:: javascript

      "chef-server": {         
        "organization": "test",
        "existing": true,
        "host": "chef-server.example.com"       
      },


Network and Ports
-----------------------------------------------------
|chef delivery| has the following network and port requirements:

  .. list-table::
     :widths: 100 250 100 100      
     :header-rows: 1

     * - Ports
       - Description
       - Server
       - State
     * - 10000-10003
       - TCP Push Jobs
       - Chef server
       - LISTEN
     * - 8989
       - TCP Delivery Git (SCM)
       - Delivery server
       - LISTEN
     * - 443
       - TCP HTTP Secure
       - Chef server, Delivery server
       - LISTEN
     * - 22
       - TCP SSH
       - All
       - LISTEN
     * - 80
       - TCP HTTP
       - Chef server, Delivery server
       - LISTEN
     * - 5672
       - TCP Analytics MQ
       - n/a
       - n/a
     * - 10012-10013
       - TCP Analytics Messages/Notifier
       - n/a
       - n/a


Install |chef delivery|
=====================================================
Begin installing |chef delivery| by creating a provisioning node to provision and maintain the cluster. A provisioning node is required.

Provisioning Node
-----------------------------------------------------
|chef delivery| uses |chef provisioning| to create, upgrade, and manage the cluster. A dedicated provisioning node ensures a central place from which the |chef delivery| cluster is managed, including managing those allowed to control it. Use your existing means to provision a dedicated provisioning node with a supported platform. This machine does not need to be powerful because it runs only provisioning code. Within |amazon aws|, |company_name| generally uses a t2.micro instance, which is a single CPU 2.5GHz, 1 GB of memory, and 8 GB of disk space.

On the provisioning node:

#. Install a development environment:

   For |debian|-based (apt):

   .. code-block:: bash
      
      $ sudo apt-get install build-essential

   For |redhat enterprise linux|-based (yum):

   .. code-block:: bash
      
      $ sudo yum groupinstall "Development Tools"

   For |mac os x|:

   .. code-block:: bash
      
      $ sudo xcode-select --install

#. Install |git| and configure your |github| username and email, for help see: `Installing Git <http://git-scm.com/book/en/v2/Getting-Started-Installing-Git>`_ and `First-Time Git Setup <https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup>`_. 
#. Install the `Chef Development Kit <https://downloads.chef.io/chef-dk/>`_. Be sure to set the system |ruby|; for details, see `Add Ruby to $PATH <https://docs.chef.io/install_dk.html#add-ruby-to-path>`_. 
#. Install ``knife push``:

   .. code-block:: bash
      
      $ chef gem install knife-push

#. Install `RAKE - Ruby Make <http://rake.rubyforge.org/>`_:

   .. code-block:: bash
      
      $ sudo apt-get rake

#. Transfer your |chef delivery| license key to ``~/delivery.license``.
#. Clone the |git| repo for the |chef delivery| cluster:

   .. code-block:: bash
      
      $ git clone https://github.com/opscode-cookbooks/delivery-cluster.git ~/delivery-cluster


Cluster Settings
-----------------------------------------------------
The following sections detail setting up |chef delivery| for |amazon aws| provisioning or SSH provisioning; however, some ``rake setup:generate_env`` configuration options are common to both.

.. warning:: Ignore the **Specify a delivery-cli artifact** option because it will be removed.

AWS Cluster
+++++++++++++++++++++++++++++++++++++++++++++++++++++
For |amazon aws|:

.. list-table::
   :widths: 200 400
   :header-rows: 1

   * - Option
     - Description
   * - **Environment Name**
     - This name becomes the default name for the |chef delivery| cluster environment, enterprise, and organization. The naming convention prohibits the use of capital letters, but should otherwise be alphanumeric.
   * - **Key Name***
     - This is the name of your |amazon aws| ``.pem`` credential file. Enter only the name, without the extension. This file is typically located in the ``~.ssh`` directory, and is associated with the **Key name pair** value in |amazon aws| console: https://console.aws.amazon.com/iam/home.
   * - **Image ID**, **Subnet ID**, and **Security Group ID**
     - This is the information that |amazon aws| needs to provision the nodes. It is wise to verify that the given defaults are actually the ones that you want by opening your |amazon aws| console and verifying.
   * - **Use existing chef-server**
     - Accept the default: ``no``. If you want ``delivery-cluster`` to configure a |chef server| for you (you will be asked for the IP address of the server). Enter ``yes`` if you have a configured |chef server| that you want to use and do not need ``delivery-cluster`` to configure one for you. If you do specify ``yes``, please note that the version of the |chef server| must be 12.2, it cannot have a high availability configuration. In addition, a special entry must be made to the environments configuration file (``environments/NAME_OF_ENV.json``) simillar to:

       .. code-block:: javascript

          "chef-server": {         
            "organization": "test",
            "existing": true,
            "host": "chef-server.example.com"       
          },

   * - **License File**
     - The path to your |chef delivery| license file; the default path is your home directory.
   * - **Enable Supermarket**
     - Enter "yes" if you intend to run cookbooks through your |chef delivery| pipeline.

SSH Cluster
+++++++++++++++++++++++++++++++++++++++++++++++++++++
For SSH:

.. list-table::
   :widths: 200 400
   :header-rows: 1

   * - Option
     - Description
   * - **Environment Name**
     - This name becomes the default name for your |chef delivery| cluster environment, enterprise, and organization. The naming convention prohibits the use of capital letters, but should otherwise be alphanumeric.
   * - **Key File**
     - The path to your ``.ssh`` key file; for example, ``/home/USERNAME/.ssh/USERNAME.pem``. Note, you must set up the public/private SSH key-pair yourself before attempting to install |chef delivery|.
   * - **SSH Username**
     - Enter the default SSH username for the system on which you are installing ``delivery-cluster``. For example, for an |ubuntu| machine, the default SSH username is ``ubuntu``. You may need to look up what the default is for your system.
   * - **Chef Server Host**, **Delivery Server Host**, and **Build Nodes Host**
     - For SSH, you enter the IP addresses of the nodes that you have already provisioned. This is true also if you choose to enable a |supermarket| server.
   * - **Use existing chef-server**
     - Accept the default, "no", if you want ``delivery-cluster`` to configure a Chef server for you (you will be asked for the IP address of the server). Enter "yes" if you have a configured |chef server| that you want to use and do not need ``delivery-cluster`` to configure one for you. If you do specify ``yes``, please note that the version of the |chef server| must be 12.2, it cannot have a high availability configuration. In addition, a special entry must be made to the environments configuration file (``environments/NAME_OF_ENV.json``) simillar to:

       .. code-block:: javascript

          "chef-server": {         
            "organization": "test",
            "existing": true,
            "host": "chef-server.example.com"       
          },

   * - **License Fil**
     - The path to your |chef delivery| license file; the default path is your home directory.
   * - **Enable Supermarket**
     - Enter "yes" if you intend to run cookbooks through your |chef delivery| pipeline.


AWS Provisioning
--------------------------------------------------------
This section describes setting up a |chef delivery| cluster to use |amazon aws| for provisioning. This process creates at least five machines, depending on the selected configuration options. The typical (and recommended) starting setup is five nodes in addition to the provisioning node:

* One to run the |chef server|
* One to run |chef delivery|
* Three to act as build nodes
* For cookbook dependency resolution, using |supermarket| server is required
* For a test environment, use stand-in infrastructure nodes; we recommend four, one for each environment stage: Acceptance, Union, Rehearsal, and Delivered

On the provisioning node:

#. Configure your |amazon aws| key credentials in two files, ``~/.aws/config`` and ``~/.aws/credentials`` as shown, with the text editor of your choice:
   
   For ``~/.aws/config``:

   .. code-block:: bash

      [default]
      region = us-west-2
      output = text
      aws_access_key_id = YOUR_ACCESS_KEY_ID
      aws_secret_access_key = YOUR_SECRET_KEY

   For ``~/.aws/credentials``:

   .. code-block:: bash

      [default]
      aws_access_key_id = YOUR_ACCESS_KEY_ID
      aws_secret_access_key = YOUR_SECRET_KEY

#. Transfer the private key of the key pair (private-key) that you will use to create the servers in |amazon aws|, to ``~/.ssh`` on the provisioning node. If you do not have one already, use this link and create one: `Amazon EC2 Key Pairs <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html>`_.

#. Ensure that an |amazon aws| security group is available, with the appropriate ports open. See "Network and Ports" for details.

#. Move to the ``delivery-cluster`` directory:  ``cd ~/delivery-cluster``.

#. Create a configuration file to drive |chef provisioning|:

   .. code-block:: bash

      $ rake setup:generate_env

   This opens a wizard, the following code block shows the interactions. Variables you must enter are shown in ALL CAPs. Default values are shown in square brackets; pressing ENT sets the default value. This command creates a ``environments/ENV_NAME.json`` file with the specified settings that you can modify if need be. See "Common Configurations" for a list of the variables you must enter, and the defaults you may want to change.

   .. code-block:: bash
   
      $ rake setup:generate_env

      Gathering Cluster Information

      Provide the following information to generate your environment.
      
      Global Attributes
      Environment Name [test]:
      Cluster ID [test]:
      
      Available Drivers: [ aws | ssh | vagrant ]
      Driver Name [vagrant]: aws
      
      Driver Information [aws]
      Key Name: MY-KEY-NAME
      SSH Username [ubuntu]:
      Image ID [ami-3d50120d]:
      Subnet ID [subnet-19ac017c]:
      Security Group ID [sg-cbacf8ae]:
      Use private ip for ssh? [yes]:
      Would you like to configure Proxy Settings? [no]:
      
      Chef Server
      Organization Name [test]:
      Use existing chef-server? [no]:
      Flavor [c3.xlarge]:
      
      Delivery Server
      Package Version [latest]:
      Enterprise Name [test]:
      License File [/Users/YOUR-NAME/delivery.license]:
      Flavor [c3.xlarge]:
      
      Analytics Server
      Enable Analytics? [no]:
      
      Supermarket Server
      Enable Supermarket? [no]: yes
      Flavor [c3.xlarge]:
      
      Build Nodes
      Number of Build Nodes [1]: 3
      Flavor [c3.large]:
      Specify a delivery-cli artifact? [no]:
      
      Rendering Environment => environments/test.json

#. Export the environment by executing the following:

   .. code-block:: bash

      $ export CHEF_ENV=test

   where ``test`` is the name of the environment.

   .. note:: Name the environment file anything, but keep the name close by for future reference.


SSH Provisioning
-----------------------------------------------------
This section describes setting up a |chef delivery| cluster to use |ssh| for provisioning. This process creates at least five machines, depending on the selected configuration options. The typical (and recommended) starting setup is five nodes in addition to the provisioning node:

* One to run the |chef server|
* One to run |chef delivery|
* Three to act as build nodes
* For cookbook dependency resolution, using |supermarket| server is required
* For a test environment, use stand-in infrastructure nodes; we recommend four, one for each environment stage: Acceptance, Union, Rehearsal, and Delivered

These machines must be accessible via |ssh| and commands should be run using ``sudo`` without passwords. 

On the provisioning node:

#. Upload the private key (.pem file). For example:

   .. code-block:: bash

      $ scp -i ~/.ssh/USERNAME.pem USER@IP_ADDRESS:/home/USER/.ssh/USERNAME.pem
      $ scp -i ~/.ssh/USERNAME-aws.pem USER@IP_ADDRESS:/home/USER/.ssh/USERNAME-aws.pem

#. Ensure that the appropriate ports are open.

#. Create a configuration file to drive |chef provisioning|:

   .. code-block:: bash

      $ rake setup:generate_env

   This opens a wizard, the following code block shows the interactions. Variables you must enter are shown in ALL CAPs. Default values are shown in square brackets; pressing ENT sets the default value. This command creates an ``environments/ENV_NAME.json`` file with the specified settings that you can modify if need be. See "Common Configurations" for a list of the variables you must enter, and the defaults you may want to change.

   .. code-block:: bash
   
      $ rake setup:generate_env

      Gathering Cluster Information

      Provide the following information to generate your environment.
      
      Global Attributes
      Environment Name [test]:
      Cluster ID [test]:
      
      Available Drivers: [ aws | ssh | vagrant ]
      Driver Name [vagrant]: ssh
      
      Driver Information [ssh]
      SSH Username [vagrant]: DEFAULT_SSH_USERNAME_FOR_YOUR_SYSTEM
      Key File [/home/mabrahms/.vagrant.d/insecure_private_key]: /home/USERNAME/.ssh/USERNAME.pem 
      Would you like to configure Proxy Settings? [no]: 
      
      Chef Server
      Organization Name [test]:
      Use existing chef-server? [no]:
      Host [33.33.33.10]: IP_ADDR_FOR_CHEF_SERVER
      
      Delivery Server
      Package Version [latest]:
      Enterprise Name [test]:
      License File [/Users/salimafiune/delivery.license]: PATH_TO_DELIVERY_LICENSE
      Host [33.33.33.10]: IP_ADDR_FOR_DELIVERY_SERVER
      
      Analytics Server
      Enable Analytics? [no]:
      
      Supermarket Server
      Enable Supermarket? [no]: yes
      Host [33.33.33.10]: IP_ADDR_FOR_SUPERMARKET_SERVER
      
      Build Nodes
      Number of Build Nodes [1]: 3
      Host for Build Node 1 [33.33.33.10]: IP_ADDR_FOR_BUILD_NODE_1
      Host for Build Node 2 [33.33.33.10]: IP_ADDR_FOR_BUILD_NODE_2
      Host for Build Node 3 [33.33.33.10]: IP_ADDR_FOR_BUILD_NODE_3
      Specify a delivery-cli artifact? [no]:
      
      Rendering Environment => environments/test.json


#. Important! Export your new environment by executing the following: (example uses ``test`` as the environment name):

   .. code-block:: bash

      $ export CHEF_ENV=test

.. note:: 

   You can name your environment file anything, but note the name for future reference.

Reset SSH Keys
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_delivery/includes_delivery_ssh_keys_reset.rst

Run Provisioning
-----------------------------------------------------
To run provisioning (from inside the ``delivery-cluster`` directory), run the following command:

.. code-block:: bash

   $ rake setup:cluster

.. note:: 

   * If the first converge fails on the build nodes, try running the above step again. The |chef delivery| cluster is complicated and sometimes there are timeouts.
   * If |amazon aws| provisioning is used, this step creates instances on |amazon aws|. If there are any failures, check the |amazon aws| console for nodes without names. Nodes without names can be removed.

Verify Provisioning
-----------------------------------------------------
To verify provisioning (from inside the ``delivery-cluster`` directory), do the following:

#. Run the following command:

   .. code-block:: bash

      $ rake info:list_core_services

#. Navigate to your CHEF_SERVER_URL, and then login with ``delivery:delivery``.
#. Click on **Nodes**. You’ll see your |chef delivery| server, your build nodes, and nodes for any other optional features that you installed.
#. Get the credentials and URL with the following command:

   .. code-block:: bash

      $ rake info:delivery_creds

#. Navigate to the **Web Login** and use the ``admin`` credentials to log in.
#. Run the following command:

   .. code-block:: bash

      $ knife node status

   All build nodes should report available.

Setup Supermarket
-----------------------------------------------------
A private |supermarket| instance is required to resolve cookbook dependencies. The following settings should be configured for |supermarket|:

.. list-table::
   :widths: 150 350
   :header-rows: 1

   * - Setting
     - Description
   * - ``hostname``
     - The hostname of the |supermarket| server.
   * - ``fqdn``
     - The |fqdn| for |supermarket|. Although |supermarket| will consume it from ``node['fqdn']``, by default.
   * - ``flavor``
     - The |amazon ami| flavor of the |supermarket| server.
   * - ``ip``
     - The IP address of the |supermarket| server.
   * - ``host``
     - The hostname of the |supermarket| server.

To distribute private, internal cookbooks, set up a private |supermarket|; run the following command:

.. code-block:: bash

   $ rake setup:supermarket


Configure Delivery
=====================================================
In |chef delivery| there are multiple levels of organization: enterprises, organizations, and projects. The provisioning step created the initial enterprise you specified in your environment file as the first ``name`` option. Enterprises are designed to provide units of multi-tenancy with separate sets of organizations and users. Next, set up |chef delivery| by adding users and organizations.

Manage Users
------------------------------------------------------
The default ``admin`` account should not be used after |chef delivery| is installed. Instead, use the following procedure to create a new user for yourself, then log out as ``admin`` and log back in as the user you created. 

Add Users
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_delivery/includes_delivery_users_ldap_user_add.rst

Edit Users
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_delivery/includes_delivery_users_ldap_user_edit.rst

Create Organizations
-----------------------------------------------------
.. include:: ../../includes_delivery/includes_delivery_create_org.rst

Setup a Workstation
-----------------------------------------------------
.. include:: ../../includes_delivery/includes_delivery_setup_workstation.rst

Install Delivery CLI
-----------------------------------------------------
.. include:: ../../includes_delivery/includes_delivery_ssh_keys_cli_install.rst

|mac os x|
++++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_delivery/includes_delivery_ssh_keys_cli_install_mac.rst

|ubuntu|
++++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_delivery/includes_delivery_ssh_keys_cli_install_ubuntu.rst

RHEL, SUSE
++++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_delivery/includes_delivery_ssh_keys_cli_install_rhel.rst

|windows|
++++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_delivery/includes_delivery_ssh_keys_cli_install_windows.rst

Configure Delivery CLI
-----------------------------------------------------
.. include:: ../../includes_delivery/includes_delivery_ssh_keys_cli_configure.rst

Integrate with GitHub
-----------------------------------------------------
.. include:: ../../includes_delivery/includes_delivery_users_onboard_github.rst

.. note:: To integrate |chef delivery| and |github enterprise| or |github| online, see "Set up Github Enterprise OAuth" below for more information about setting up |github| |oauth| for |chef delivery|.

Integrate LDAP
-----------------------------------------------------
.. include:: ../../includes_delivery/includes_delivery_users_ldap.rst

LDAP Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_delivery/includes_delivery_users_ldap_attributes.rst

Configure LDAP
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_delivery/includes_delivery_users_ldap_configure.rst

Add or Edit Users
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_delivery/includes_delivery_users_ldap_user.rst

Add Users
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_delivery/includes_delivery_users_ldap_user_add.rst

Edit Users
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
.. include:: ../../includes_delivery/includes_delivery_users_ldap_user_edit.rst


Set up Github Enterprise OAuth
=====================================================
This guide assumes you have successfully set up the following:

* A |chef delivery| cluster using the ``delivery-cluster`` cookbook (https://github.com/opscode-cookbooks/delivery-cluster)
* User accounts in |github enterprise| and |chef delivery| with matching usernames
* Have established SSL trust between |chef delivery| and |github enterprise| servers

Create Github OAuth App
-----------------------------------------------------
Go to one of the appropriate URLs listed below, depending on where you want to link the |github| |oauth| application:

* Individual Account: ``https://$GITHUB_SERVER/settings/applications``
* Organization: ``https://$GITHUB_SERVER/organizations/$ORGANIZATION/settings/applications``

Click **Register New Application** and set the following values:

.. list-table::
   :widths: 200 400
   :header-rows: 1

   * - Key
     - Value
   * - **Application Name**
     - ``Delivery``
   * - **Homepage URL**
     - ``http://$DELIVERY_SERVER/e/$DELIVERY_ENTERPRISE``
   * - **Authorization Callback URL**
     - ``http://$DELIVERY_SERVER/api/v0/github_auth_callback``

Click **Register Application** and take note of the generated ``Client ID`` and ``Client Secret`` in the upper left corner.


Add Github OAuth to Delivery
-----------------------------------------------------
Log in to the |chef delivery| server and run the following command:

**For Github Enterprise**

.. code-block:: bash

   delivery-ctl setup-github-enterprise $GHE_SERVER_ROOT_URL $CLIENT_ID $CLIENT_SECRET

**For Github.com**

.. code-block:: bash

   delivery-ctl setup-github $CLIENT_ID $CLIENT_SECRET


Request Github Token
-----------------------------------------------------
Log in to the |chef delivery| server and run the following command:

**For Github Enterprise**

.. code-block:: bash

   delivery-ctl setup-github-enterprise-token $DELIVERY_ENTERPRISE

**For Github.com**

.. code-block:: bash

   delivery-ctl setup-github-token $DELIVERY_ENTERPRISE


Create Github-backed Project
-----------------------------------------------------
Before you begin you will need an existing |github| repo with at least one commit and also you have to grant
admin rights to the ``chef-delivery`` account.

#. Open your organization page in the |chef delivery| web UI and create a new project as normal.
#. Next, select the **Github** option from the bar and enter the **Github Repo Owner**, **Github Repo Name**, and the branch you wish to use as your primary pipeline.
#. Click **Save & Close**.

There is currently no process for migrating an existing |chef delivery| project to one that is backed by |github|.


Link Github User to Delivery
-----------------------------------------------------
You must associate your |github| user with your |chef delivery| user in order to successfully create changes from |github| pull requests.

From a local checkout of a |chef delivery| project, run the following ``delivery-cli`` command.

**For Github Enterprise**

.. code-block:: bash

   delivery api put users/$DELIVERY_USERNAME/set-oauth-alias --data='{"app_name":"github-enterprise","alias":"$GITHUB_USERNAME"}'

**For Github.com**

.. code-block:: bash

   delivery api put users/$DELIVERY_USERNAME/set-oauth-alias --data='{"app_name":"github","alias":"$GITHUB_USERNAME"}'

Note the following constraints:

* You may not link two |github| accounts to a single |chef delivery| user.
* Two users may not share a |github| account.


Handle Untrusted PRs
-----------------------------------------------------
By default all pull requests from |github| users that are not linked with a |chef delivery| user will be ignored.

To accept pull requests from an unlinked user you may add the ``untrusted_github_user`` using the command below.

.. code-block:: bash

   $ sudo delivery-ctl create-user $DELIVERY_ENTERPRISE untrusted_github_user --roles=committer

A pull request opened by a |github| user who is not linked with a |chef delivery| user will be labeled as ``Quarantined``. A change for this pull request owned by ``untrusted_github_user`` will be created but the Verify stage will not be triggered. An authorized user may review the pull request and add a comment with ``@delivery review`` command to reassign the change to their user account and trigger the Verify stage.


Push Changes to Delivery
-----------------------------------------------------
Next, you must create some commits in the repository. This is not a change submission, this is just a base of code from which to build. |chef delivery| cannot currently operate on a completely empty repository. (Below are steps for a cookbook):

.. code-block:: bash

   $ chef generate cookbook <deliv_proj>
   $ cd <deliv_proj>
   $ git init && git add . && git commit -m 'Initial Commit'
   $ git remote add origin <github_ssh_url>
   $ git push origin master

Next, you'll actually create a first pull request; customarily, this is the addition of a  ``.delivery/config.json`` file. The one shown below is a good starting point for a cookbook.

.. code-block:: bash

   $ git checkout -b add_delivery_config
   $ mkdir .delivery

Edit ``.delivery/config.json`` like so:

.. code-block:: javascript

   {
     "version": "2",
     "build_cookbook": {
       "git": "https://github.com/opscode-cookbooks/delivery-truck.git",
       "name": "delivery-truck",
       "branch": "master"
     },
     "skip_phases": [
       "smoke",
       "security",
       "quality"
     ]
   }

Next, push the code to |github|.

.. code-block:: bash

   $ git add . && git commit -m 'add delivery config'
   $ git push origin add_delivery_config

(The |chef delivery_cli| CLI can perform all of this for projects that use local repositories; one day, it'll do it for remote repositories as well.)

Finally, create a pull request from this change in the |github| web UI.



Validate the Installation
=====================================================
The surest way to validate your |chef delivery| installation is by creating a cookbook manually and submitting it to |github|, which will kick off a pipeline and you can see how the process works.

.. include:: ../../includes_delivery/includes_delivery_build_cookbook_create.rst