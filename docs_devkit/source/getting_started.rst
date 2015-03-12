=====================================================
Getting Started
=====================================================

Welcome to |chef|!

.. include:: ../../includes_chef/includes_chef.rst

.. note:: Use `Quick Start <http://docs.chef.io/devkit/getting_started.html#quick-start>`__ for just the command lines needed to get started. Hack your way through!

   Use `Workstation Setup <http://docs.chef.io/devkit/getting_started.html#workstation-setup>`__ for a more verbose walkthrough. Continue to `Kitchen Setup <http://docs.chef.io/devkit/getting_started.html#kitchen-title-setup>`__ and set up multiple virtual environments using |kitchen|. These virtual environments may be used for testing, but in this case they are used to show how |chef| manages multiple platforms in the same way.

Quick Start
=====================================================
For the quickest way to get started using |chef|:

#. Download the |chef dk|: http://downloads.chef.io/chef-dk/.
#. Set your system |ruby| to this path:

   .. code-block:: bash

      $ /opt/chefdk/embedded/bin/ruby

#. Generate a cookbook: 

   .. code-block:: bash

      $ chef generate app cookbook_name

#. Update the ``default.rb`` recipe in the generated cookbook to contain:

   .. code-block:: ruby

      file "#{ENV['HOME']}/test.txt" do
        content 'This file created by Chef!'
      end

#. Run the |chef client| using the ``default.rb`` recipe:

   .. code-block:: bash

      $ chef-client --local-mode --override-runlist chef-repo

This will create a file named ``test.txt`` at the home path on your machine. Open that file and it will say ``This file created by Chef!``. There's a lot more that |chef| can do, obviously, but that was super easy! Keep reading this topic for more information about setting up your workstation or go to https://docs.chef.io and dive in.



.. About Resources
.. =====================================================
.. .. include:: ../../includes_resources_common/includes_resources_common.rst
.. 
.. The |chef client| includes many built-in resources that handle just about any situation. Three of these resources are an essential part of any |chef| workflow: |resource package|, |resource template|, and |resource service|. Use the |resource package| resource to install a package, the |resource template| resource to generate a file on the node that applies configuration settings for that package, and then use the |resource service| resource to start (or restart) the service associated with that package. This is a combination of resources that you will use often with |chef|.
.. 
.. The next step is to install |chef|, configure your workstation, and then configure |kitchen| to run virtual instances locally on that workstation. After that is finished, we'll revisit the |resource package|, |resource template|, and |resource service| resources and use them with |kitchen| to converge |ntp| into a virtual instance that is spun up and managed by |kitchen|.
.. 

Workstation Setup
=====================================================
The |chef dk| is a package that contains everything you need to start using |chef|, along with a collection of tools and libaries that can help improve the code you are using to run your business.

Install the |chef dk_title|
-----------------------------------------------------
.. include:: ../../includes_install/includes_install_chef_dk.rst

What's in the |chef dk_title|?
-----------------------------------------------------
.. include:: ../../includes_chef_dk/includes_chef_dk_tools.rst

.. include:: ../../includes_chef_dk/includes_chef_dk_tools_main.rst

Set the System |ruby|
-----------------------------------------------------
.. include:: ../../step_ruby/step_ruby_set_system_ruby_as_chefdk_ruby.rst

.. note:: You may need to restart your shell for this change to be visible.

Your First Cookbook
-----------------------------------------------------

We have already used the |chef ctl| ``verify`` subcommand to verify the installation of the |chef dk|. Now let's use the |chef ctl| ``generate`` subcommand to create the |chef repo|, which is the main folder in which your |chef| code will be stored. Run the following command:

.. code-block:: bash

   $ chef generate app name
   
where ``name`` is a name that you have chosen for the both the |chef repo| and the default cookbook. We are calling ours ``chef-repo``; you can call yours whatever you want. You should have a directory structure at ``/Users/your_username/cookbook_name/`` similar to::

   /chef-repo
     /.git
     .gitignore
     .kitchen.yml
     /cookbooks
       /chef-repo
         Berksfile
         chefignore
         metadata.rb
         /recipes
           default.rb
     README.md


Update Default Recipe
-----------------------------------------------------
Open the ``default.rb`` recipe in the cookbook you just created. Add the following resource to that recipe:

.. code-block:: ruby

   file "#{ENV['HOME']}/test.txt" do
     content 'This file created by Chef!'
   end

This recipe creates a file called ``test.txt`` at the path defined by the ``HOME`` environment variable. (To view that path, run ``echo "$HOME"`` in the command shell.)

Run the |chef client_title|
-----------------------------------------------------
Next, we'll run the |chef client|. This is done via the command line and the command must be run from within the |chef repo|. 

* Use the ``--local-mode`` flag to run the |chef client| locally on your machine exactly the same as if the |chef client| were able to communicate with a |chef server|. Local mode does not require a connection to a |chef server|, public or private keys, or configuring of nodes. Many people use local mode for simple, local testing of recipes and cookbooks, often as a pre-cursor to running unit and integration tests against the same recipes and cookbooks.
* Use the ``--override-runlist`` flag to run only the recipe we have just created. (More about the run-list later.) 

To run a cookbook's default recipe, only the name of the cookbook needs to be specified because the name of the cookbook is directly associated with the default recipe. 

The following command will create the file ``test.txt``:

.. code-block:: bash

   $ chef-client --local-mode --override-runlist chef-repo

where ``chef-repo`` is the name of your cookbook.

As the |chef client| adds the file to your system, output similar to the following is shown:

.. code-block:: bash

   Starting Chef Client, version 11.14.0.alpha.1
   [2014-06-13T16:13:10-07:00] WARN: No config file found or specified on command line, using command line options.
   [2014-06-13T16:13:11-07:00] WARN: SSL validation of HTTPS requests is disabled. 
   [2014-06-13T16:13:13-07:00] WARN: Run List override has been provided.
   [2014-06-13T16:13:13-07:00] WARN: Original Run List: []
   [2014-06-13T16:13:13-07:00] WARN: Overridden Run List: [recipe[chef-repo]]
   resolving cookbooks for run list: ["chef-repo"]
   Synchronizing Cookbooks:
     - chef-repo
   Compiling Cookbooks...
   Converging 1 resources
   Recipe: chef-repo::default
     * file[/Users/grantmc/test.txt] action create
       - create new file /Users/grantmc/test.txt
       - update content in file /Users/grantmc/test.txt from none to d9c88f
           --- /Users/grantmc/test.txt	2014-06-13 16:13:13.000000000 -0700
           +++ /var/folders/l0/6xjyqtvn60zdt7jk6n07wz2m0000gp/T/.test.txt20140613-9526-179gcje	2014-06-13 16:13:13.000000000 -0700
           @@ -1 +1,2 @@
           +This file created by Chef!
   
   [2014-06-13T16:13:13-07:00] WARN: Skipping final node save because override_runlist was given
   
   Running handlers:
   Running handlers complete
   
   Chef Client finished, 1/1 resources updated in 2.418878 seconds

That's it. The warnings, for the moment, can be ignored. Check the root of the path defined by the ``HOME`` environment variable and find the file named ``test.txt``. The file should contain ``This file created by Chef!``.

We'll come back to working with |chef| later on. Let's set up |kitchen| so that we can use it to build a virtual machine against which we can run |chef|.

|kitchen_title| Setup
=====================================================
.. include:: ../../includes_test_kitchen/includes_test_kitchen.rst

You will need some type of virtualization software for |kitchen|. |vagrant| is the default driver for |kitchen|. Install |vagrant|. |vagrant| requires |virtualbox|, so install |virtualbox|. Once you're ready, we'll keep using the same cookbook created earlier.

Update Metadata
-----------------------------------------------------
In that cookbok, let's update the metadata. Open the ``metadata.rb`` file. It will look similar to:

.. code-block:: ruby

   name             ''
   maintainer       ''
   maintainer_email ''
   license          ''
   description      'Installs/Configures '
   long_description 'Installs/Configures '
   version          '0.1.0'

for now, let's just update the name and version settings, like this:

.. code-block:: ruby

   name             'chef-repo'
   version          '0.1.0'

Verify |kitchen yml|
-----------------------------------------------------
Because |kitchen| is installed as part of the |chef dk|, the |kitchen yml| file is already created:

.. code-block:: yaml

   ---
   driver:
     name: vagrant
   
   provisioner:
     name: chef_zero
   
   platforms:
     - name: ubuntu-12.04
     - name: centos-6.4
   
   suites:
     - name: default
       run_list:
         - recipe[bar::default]
       attributes:

Make sure the default provisioner is |chef zero|:

.. code-block:: yaml

   ---
   driver:
     name: vagrant
   
   provisioner:
     name: chef_zero
   
   ...

and also make sure the |kitchen yml| knows about the default recipe in your cookbook. Under ``suites``, make sure the ``run_list`` contains the name of your cookbook. For example:

.. code-block:: yaml

   suites:
     - name: default
       run_list:
         - recipe[chef-repo::default]
       attributes:

where ``chef-repo`` is the name of your cookbook. This will ensure that |kitchen| uses this recipe when converging.

For now, we don't need to do anything else to get started using |kitchen|.

View Instance List
-----------------------------------------------------
From your working directory, run the following command:

.. code-block:: bash

   $ kitchen list

which will return something similar to:

.. code-block:: bash

   Instance             Driver   Provisioner  Last Action
   default-ubuntu-1204  Vagrant  ChefZero     <Not Created>
   default-centos-65    Vagrant  ChefZero     <Not Created>

So there are two available platforms---|ubuntu| 12.04 and |centos| 6.5---configured to use the |vagrant| driver (which is enabled via the ``kitchen-vagrant`` driver that is built-in to the |chef dk|), and to run |chef zero| while running tests.

Create |centos| Instance
-----------------------------------------------------
Let's create an instance. Run the following command:

.. code-block:: bash

   $ kitchen create default-centos-65

This will start |vagrant|, which will then build a machine that rubs |centos| 6.5. (If this is the first time you're running |kitchen|, then |centos| needs to first be downloaded from the default instance location and may take a few minutes.)

.. code-block:: bash

   -----> Starting Kitchen (v1.3.1)
   -----> Creating <default-centos-65>...
          Bringing machine 'default' up with 'virtualbox' provider...
          ==> default: Box 'opscode-centos-6.5' could not be found. Attempting to find and install...
              default: Box Provider: virtualbox
              default: Box Version: >= 0
          ==> default: Adding box 'opscode-centos-6.5' (v0) for provider: virtualbox
              default: Downloading: https://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_centos-6.5_chef-provisionerless.box
          ==> default: Successfully added box 'opscode-centos-6.5' (v0) for 'virtualbox'!
          ==> default: Importing base box 'opscode-centos-6.5'...
          ==> default: Matching MAC address for NAT networking...
          ==> default: Setting the name of the VM: default-centos-65_default_1403650129063_53517
          ==> default: Clearing any previously set network interfaces...
          ==> default: Preparing network interfaces based on configuration...
              default: Adapter 1: nat
          ==> default: Forwarding ports...
              default: 22 => 2222 (adapter 1)
          ==> default: Booting VM...
          ==> default: Waiting for machine to boot. This may take a few minutes...
              default: SSH address: 127.0.0.1:2222
              default: SSH username: vagrant
              default: SSH auth method: private key
              default: Warning: Connection timeout. Retrying...
          ==> default: Machine booted and ready!
          ==> default: Checking for guest additions in VM...
          ==> default: Setting hostname...
          ==> default: Machine not provisioning because `--no-provision` is specified.
          Vagrant instance <default-centos-65> created.
          Finished creating <default-centos-65> (11m29.44s).
   -----> Kitchen is finished. (11m29.76s)

Verify the instance list with the following command:

.. code-block:: bash

   $ kitchen list

and you will see the following:

.. code-block:: bash

   Instance             Driver   Provisioner  Last Action
   default-ubuntu-1204  Vagrant  ChefZero     <Not Created>
   default-centos-65    Vagrant  ChefZero     Created

Create |ubuntu| Instance
-----------------------------------------------------
Now let's create the |ubuntu| instance:

.. code-block:: bash

   $ kitchen create default-ubuntu-1204

this may also take a few minutes, but will (eventually) return something similar to:

.. code-block:: bash

   -----> Starting Kitchen (v1.3.1)
   -----> Creating <default-ubuntu-1204>...
          Bringing machine 'default' up with 'virtualbox' provider...
          ==> default: Box 'opscode-ubuntu-12.04' could not be found. Attempting to find and install...
              default: Box Provider: virtualbox
              default: Box Version: >= 0
          ==> default: Adding box 'opscode-ubuntu-12.04' (v0) for provider: virtualbox
              default: Downloading: https://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_ubuntu-12.04_chef-provisionerless.box
          ==> default: Successfully added box 'opscode-ubuntu-12.04' (v0) for 'virtualbox'!
          ==> default: Importing base box 'opscode-ubuntu-12.04'...
          ==> default: Matching MAC address for NAT networking...
          ==> default: Setting the name of the VM: default-ubuntu-1204_default_1403651715173_54200
          ==> default: Fixed port collision for 22 => 2222. Now on port 2200.
          ==> default: Clearing any previously set network interfaces...
          ==> default: Preparing network interfaces based on configuration...
              default: Adapter 1: nat
          ==> default: Forwarding ports...
              default: 22 => 2200 (adapter 1)
          ==> default: Booting VM...
   ==> default: Waiting for machine to boot. This may take a few minutes...           default: SSH address: 127.0.0.1:2200
              default: SSH username: vagrant
              default: SSH auth method: private key
              default: Warning: Connection timeout. Retrying...
          ==> default: Machine booted and ready!
          ==> default: Checking for guest additions in VM...
          ==> default: Setting hostname...
          ==> default: Machine not provisioning because `--no-provision` is specified.
          Vagrant instance <default-ubuntu-1204> created.
          Finished creating <default-ubuntu-1204> (10m57.93s).
   -----> Kitchen is finished. (10m58.24s)

Verify the instance list with the following command:

.. code-block:: bash

   $ kitchen list

.. code-block:: bash

   Instance             Driver   Provisioner  Last Action
   default-ubuntu-1204  Vagrant  ChefZero     Created
   default-centos-65    Vagrant  ChefZero     Created

and now we're all set up! We're going to use the same recipe and cookbook that we already created.

Converge |centos|
-----------------------------------------------------
Now that we're all configured and ready to run |kitchen|, let's try it in |centos|:

.. code-block:: bash

   $ kitchen converge default-centos-65

The first time you run this, it'll have to download the |chef client| and will show something similar to the following while it converges the node via |kitchen|: 

.. code-block:: bash

   -----> Starting Kitchen (v1.3.1)
   -----> Converging <default-centos-65>...
          Preparing files for transfer
          Preparing cookbooks from project directory
          Removing non-cookbook files before transfer
          Preparing nodes
   -----> Installing Chef Omnibus (true)
          downloading https://www.chef.io/chef/install.sh
            to file /tmp/install.sh
          ...
          Downloading Chef ...
          Installing Chef ...
          Thank you for installing Chef!
          Transferring files to <default-centos-65>
          [2014-06-27T18:41:04+00:00] INFO: Forking chef instance to converge...
          Starting Chef Client, version 12.1.1
          [2014-06-27T18:45:18+00:00] INFO: *** Chef 12.1.1 ***
          [2014-06-27T18:45:18+00:00] INFO: Chef-client pid: 3226
          [2014-06-27T18:45:25+00:00] INFO: Setting the run_list to ["recipe[chef-repo::default]"] from CLI options
          [2014-06-27T18:45:25+00:00] INFO: Run List is [recipe[chef-repo::default]]
          [2014-06-27T18:45:25+00:00] INFO: Run List expands to [chef-repo::default]
          [2014-06-27T18:45:25+00:00] INFO: Starting Chef Run for default-centos-65
          [2014-06-27T18:45:25+00:00] INFO: Running start handlers
          [2014-06-27T18:42:40+00:00] INFO: Start handlers complete.
          Compiling Cookbooks...
          Converging 1 resources
          Recipe: chef-repo::default
            * file[/root/test.txt] action create... INFO: Processing file[/root/test.txt] 
              action create (chef-repo::default line 10)
          [2014-06-27T18:42:40+00:00] INFO: file[/root/test.txt] created file /root/test.txt
            - create new file /root/test.txt... INFO: file[/root/test.txt] updated file contents /root/test.txt
            - update content in file /root/test.txt from none to d9c88f
          --- /root/test.txt	2014-06-27 18:42:40.695889276 +0000
          +++ /tmp/.test.txt20140627-2810-1xdx98p	2014-06-27 18:42:40.695889276 +0000
          @@ -1 +1,2 @@
          +This file created by Chef!
            - restore selinux security context
          [2014-06-27T18:42:40+00:00] INFO: Chef Run complete in 0.168252291 seconds
          Running handlers:
          [2014-06-27T18:42:40+00:00] INFO: Running report handlers
          Running handlers complete
          [2014-06-27T18:42:40+00:00] INFO: Report handlers complete
          Chef Client finished, 1/1 resources updated in 7.152725504 seconds
          Finished converging <default-centos-65> (0m8.43s).
   -----> Kitchen is finished. (0m15.96s)

Converge |ubuntu|
-----------------------------------------------------
Now let's try it in |ubuntu|:

.. code-block:: bash

   $ kitchen converge default-ubuntu-1204

Like |centos|, the |chef client| will need to be downloaded:

.. code-block:: bash

   -----> Starting Kitchen (v1.3.1)
   -----> Converging <default-ubuntu-1204>...
          Preparing files for transfer
          Preparing cookbooks from project directory
          Removing non-cookbook files before transfer
          Preparing nodes
   -----> Installing Chef Omnibus (true)
          downloading https://www.chef.io/chef/install.sh
            to file /tmp/install.sh
          ...
          Downloading Chef ...
          Installing Chef ...    
          Thank you for installing Chef!       
          Transferring files to <default-ubuntu-1204>
          [2014-06-27T18:48:01+00:00] INFO: Forking chef instance to converge...       
          Starting Chef Client, version 12.1.1       
          [2014-06-27T18:48:01+00:00] INFO: *** Chef 12.1.1 ***       
          [2014-06-27T18:48:01+00:00] INFO: Chef-client pid: 1246       
          [2014-06-27T18:48:03+00:00] INFO: Setting the run_list to ["recipe[chef-repo::default]"] from CLI options       
          [2014-06-27T18:48:03+00:00] INFO: Run List is [recipe[chef-repo::default]]       
          [2014-06-27T18:48:03+00:00] INFO: Run List expands to [chef-repo::default]       
          [2014-06-27T18:48:03+00:00] INFO: Starting Chef Run for default-ubuntu-1204       
          [2014-06-27T18:48:03+00:00] INFO: Running start handlers       
          [2014-06-27T18:48:03+00:00] INFO: Start handlers complete.       
          Compiling Cookbooks...       
          Converging 1 resources       
          Recipe: chef-repo::default       
            * file[/home/vagrant/test.txt] action create... INFO: Processing file[/home/vagrant/test.txt] 
              action create (chef-repo::default line 10)       
          [2014-06-27T18:48:03+00:00] INFO: file[/home/vagrant/test.txt] created file /home/vagrant/test.txt       
            - create new file /home/vagrant/test.txt... INFO: file[/home/vagrant/test.txt] updated file contents /home/vagrant/test.txt       
            - update content in file /home/vagrant/test.txt from none to d9c88f       
          --- /home/vagrant/test.txt	2014-06-27 18:48:03.233096345 +0000       
           +++ /tmp/.test.txt20140627-1246-178u9dg	2014-06-27 18:48:03.233096345 +0000       
          @@ -1 +1,2 @@       
          +This file created by Chef!       
          [2014-06-27T18:48:03+00:00] INFO: Chef Run complete in 0.015439954 seconds       
          Running handlers:       
          [2014-06-27T18:48:03+00:00] INFO: Running report handlers       
          Running handlers complete       
          [2014-06-27T18:48:03+00:00] INFO: Report handlers complete       
          Chef Client finished, 1/1 resources updated in 1.955915841 seconds       
          Finished converging <default-ubuntu-1204> (0m15.67s).
   -----> Kitchen is finished. (0m15.96s)

Verify Instance List
-----------------------------------------------------
To verify if both instances have been converged, run the following command:

.. code-block:: bash

   $ kitchen list

.. code-block:: bash

   Instance             Driver   Provisioner  Last Action
   default-ubuntu-1204  Vagrant  ChefSolo     Converged
   default-centos-65    Vagrant  ChefSolo     Converged

Now you can run your cookbooks in a virtual instance managed by |kitchen| on multiple platforms (|ubuntu| and |centos|).

.. More About Resources
.. =====================================================
.. The |chef client| includes many built-in resources: |resource execute|, |resource directory|, |resource package|, |resource service|, |resource file|, |resource template|, |resource user|, |resource script|, and |resource scm_git|.
.. 
.. The sections below quickly describe the most popular resources. For the full list of built-in |chef| resources, see `Resources <http://docs.opscode.com/resource.html#resources>`_. You can also `create your own resources <http://docs.opscode.com/lwrp_custom.html>`_ or `use the resources built into the community cookbooks <http://supermarket.chef.io>`_.
.. 
.. Execute Commands
.. -----------------------------------------------------
.. Commands are executed using the |resource execute| resource using an attribute to specify the actual command to run. See `execute <http://docs.chef.io/resource_execute.html>`_ for more information about executing commands.
.. 
.. Manage Directories
.. -----------------------------------------------------
.. Directories are hierarchies of folders that comprise all the information stored on a computer. There are two ways to manage directories. The first is via the |resource directory| resource, which manages directories starting from the root directory. And the second is the |resource remote_directory|, which transfers directory structures defined in cookbooks to nodes. See `directory <http://docs.chef.io/resource_directory.html>`_ for more information about managing directories. If the directory is defined in a cookbook, use `remote_directory <http://docs.chef.io/resource_remote_directory.html>`_ instead.
.. 
.. Manage Packages
.. -----------------------------------------------------
.. Packages are collections of files that comprise software applications or some part of an operating system. Use the package resource to manage these packages, unless they are sourced via |rubygems| and installed directly from within recipes or are sourced from a cookbook. See `package <http://docs.chef.io/resource_package.html>`_ for more information about managing packages. There are quite a few platform-specific package resources as well, though most of the time simply using the |resource package| is all that's necessary. For packages that are located in cookobooks, use `chef_gem <http://docs.chef.io/resource_chef_gem.html>`_. And for packages that are only included via recipes, use `gem_package <http://docs.chef.io/resource_gem_package.html>`_.
.. 
.. Manage Services
.. -----------------------------------------------------
.. Services can be started, stopped, enabled, disabled, reloaded, and restarted. See `service <http://docs.chef.io/resource_service.html>`_ for more information about managing services.
.. 
.. Manage Files
.. -----------------------------------------------------
.. Files are managed in several ways. The |resource file| resource manages files that are already present on a node. Files are transferred to nodes from cookbooks using the |resource cookbook_file| resource and are transferred to nodes from remote locations using the |resource remote_file| resource. See `file <http://docs.chef.io/resource_file.html>`_ for more information about managing files, `remote_file <http://docs.chef.io/resource_remote_file.html>`_ for transferring files from remote locations, and `cookbook_file <http://docs.chef.io/resource_cookbook_file.html>`_ for transferring files that are located in cookbooks.
.. 
.. Manage Templates
.. -----------------------------------------------------
.. Templates are used to generate files based on variables and logic contained within the template file. |chef| uses |erb| templates and |ruby| expressions and statements to define the template file. Template source files must be located within cookbooks. See `template <http://docs.chef.io/resource_template.html>`_ for more information about managing files using |erb| templates.
.. 
.. Manage Users, Groups
.. -----------------------------------------------------
.. Users and groups can be added, updated, removed. User passwords can be locked and unlocked. See `group <http://docs.chef.io/resource_user.html>`_ for more information about managing users and user passwords. The `group <http://docs.chef.io/resource_group.html>`__ resource manges groups.
.. 
.. Use Script Interpreters
.. -----------------------------------------------------
.. Script interpreters execute scripts on a node, similar to the |resource execute| resource, and with the ability to specify the interpreter that the |chef client| should use. See `script <http://docs.chef.io/resource_script.html>`_ for more (general) information about using scripts in recipes. Interpreter-specific resources are available, with `bash <http://docs.chef.io/resource_bash.html>`_ being the most popular. Also available: `csh <http://docs.chef.io/resource_csh.html>`_, `perl <http://docs.chef.io/resource_perl.html>`_, `powershell_script <http://docs.chef.io/resource_powershell_script.html>`__, `python <http://docs.chef.io/resource_python.html>`_, and `ruby <http://docs.chef.io/resource_ruby.html>`_. Two |windows|-specific resources are also available: `batch <http://docs.chef.io/resource_batch.html>`_ and `powershell_script <http://docs.chef.io/resource_powershell_script.html>`__.
.. 
.. Use Source Control
.. -----------------------------------------------------
.. Most users of |chef| keep their code in some type of version source control. |chef| can interact with this code from recipes. |git| is a very popular choice. The `git <http://docs.chef.io/resource_git.html>`_ resource is used to manage files that exist in a |git| repository. There is also a resource for `subversion <http://docs.chef.io/resource_subversion.html>`_, another popular version source control tool.
.. 
.. 
.. About Cookbooks
.. =====================================================
.. .. include:: ../../includes_cookbooks/includes_cookbooks.rst
.. 
.. Every cookbook follows a defined structure, but individiaul cookbooks can take on many different styles depending on how your organization wants to manage its code, who authored them, and how they are intended to be used. Some cookbooks contain only a single, default recipe. Others may contain only a library file. Some may contain only a few attributes. And other cookbooks may contain several custom resources along with many attributes and templates, and so on.
.. 
.. Some cookbooks you will build yourself. Some cookbooks will be provided by the community. Most community cookbooks will be managed using |berkshelf|, which is a dependency manager included in the |chef dk|. Occasionally, a community cookbook will be forked, but more often a wrapper cookbook is created to handle your organization-specific requirements while still allowing use of the community cookbook.
.. 
.. The most important thing to know about cookbooks is that there are lots of ways to build good ones. There are patterns to follow, there are guidelines. There are recomended ways of dealing with attributes. There are recommended ways of creating custom resources. But ultimately, a good cookbook is the one that works for your organization. Ideally, this cookbook works across your infrastructure. Most organizations have a mix of private (internal) and public (community) cookbooks in use in their organization.
.. 
.. 
.. Cookbook Patterns
.. -----------------------------------------------------
.. .. include:: ../../includes_cookbook/includes_cookbook_pattern.rst
.. 
.. 
.. About |ruby|
.. =====================================================
.. .. include:: ../../includes_ruby/includes_ruby.rst
.. 

Conclusion
=====================================================
.. include:: ../../includes_chef/includes_chef_why_principles.rst

.. include:: ../../includes_chef/includes_chef_why_you_know_best.rst
