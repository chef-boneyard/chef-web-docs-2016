=====================================================
Getting Started
=====================================================

Welcome to |chef|!

|chef| is a powerful automation platform that transforms complex infrastructure into code, bringing your servers and services to life. Whether you’re operating in the cloud, on-premises, or a hybrid, |chef| automates how applications are configured, deployed, and managed across your network, no matter its size.

|chef| is built around simple concepts: achieving desired state, centralized modeling of IT infrastructure, and resource primitives that serve as building blocks. These concepts enable you to quickly manage any infrastructure with |chef|. These very same concepts allow |chef| to handle the most difficult infrastructure challenges on the planet.

Anything that can run the |chef client| can be managed by |chef|. For instance, you can manage physical machines, virtual machines, containers, or cloud-based instances. The |chef client| is an agent that runs on a node and performs the actual tasks that configure it. The |chef server| is the central repository for all configuration data. The |chef client| and |chef server| communicate with each other. For secure communications, they use a combination of public and private keys that ensures the |chef server| responds only to requests made by the |chef client|.

A resource is a statement of configuration policy. It describes the desired state of an element of your infrastructure, along with the steps needed to bring that item to the desired state. Each resource statement in a |chef| recipe corresponds to a specific part of your infrastructure: a file, a template, a directory, a package, a service, a command to be executed, and so on. Each resource statement includes the resource type (such as “file” or “package”), its name, any attributes that specify additional details, and an action that tells the |chef client| what how to implement the configuration policy.

Together, resources describe all the components in your network. Recipes group resources together and describe working configurations. Add recipes to a run-list to describe the desired state for every node to which that run-list is assigned. Cookbooks are collections of recipes and are stored on the |chef server|. 

|chef| uses |ruby| as its reference language. |ruby| is a simple programming language that |chef| uses to define the patterns that are found in resources, recipes, and cookbooks. In many cases, just using these patterns is enough to configure, deploy, and manage nodes across the network. |ruby| is also a powerful and complete programming language. You can use the full power of the |ruby| programming language to make decisions about what should happen to specific resources and recipes or to extend |chef| in any manner that your organization requires.

Workstation Setup
=====================================================
The |chef dk| is a package that contains everything you need to start using |chef|, along with a collection of tools and libaries that can help manage the code you are using to run your business.

Install the |chef dk|
-----------------------------------------------------
Let's start by installing the |chef dk|:

#. Visit this page: http://www.getchef.com/downloads/chef-dk/.
#. Select a platform, and then a package. (|chef docs| uses the |mac os x| setup within the documentation.)
#. Click the download button.
#. Follow the steps in the installer and install the |chef dk| to your machine. The |chef dk| is installed to ``/opt/chefdk/`` on |unix| and |linux| systems. 
#. When finished, open a command window and enter the following:

   .. code-block:: bash
   
      $ chef verify
   
   This will verify the main components of the |chef dk|: the |chef client|, the |chef dk| library, and the tools that are built into the |chef dk|. The output should be similar to:
   
   .. code-block:: bash

      Running verification for component '...'
      ..........
      ---------------------------------------------
      Verification of component '...' succeeded.

Tools and Libraries
-----------------------------------------------------
.. include:: ../../includes_chef_dk/includes_chef_dk_tools.rst

.. include:: ../../includes_chef_dk/includes_chef_dk_tools_main.rst

System |ruby|
-----------------------------------------------------
For many users of |chef|, the |chef dk| the version of |ruby| that is included in the |chef dk| should be configured as the default version of |ruby|.

#. Open a command window and enter the following:

   .. code-block:: bash
   
      $ which ruby

   which will return something like ``/usr/bin/ruby``.
#. To use the |chef dk| version of |ruby| as the default |ruby|, edit the ``$PATH`` and ``GEM`` environment variables to include paths to the |chef dk|. Add the For example, on a machine that runs |bash|, run:

   .. code-block:: ruby
   
      echo 'eval "$(chef shell-init bash)"' >> ~/.bash_profile
   
   where ``bash`` and ``~/.bash_profile`` represents the name of the shell.

#. Run ``which ruby`` again. It should return ``/opt/chefdk/embedded/bin/ruby``.

.. note:: Using the |chef dk|-provided |ruby| as your system |ruby| is optional. This just depends on how you are using |ruby| on your system. For many users, |ruby| is primarily used for authoring |chef| cookbooks and recipes. If that's true for you, then using the |chef dk|-provided |ruby| as your system |ruby| is recommended. But for other users who are already using tools like |rbenv| to manage |ruby| versions, then that's OK too.

Your First Cookbook
-----------------------------------------------------

We have already used the |chef ctl| ``verify`` subcommand to verify the installation of the |chef dk|. Now let's use the |chef ctl| ``generate`` subcommand to create the |chef repo|, which is the main folder in which your |chef| code will be stored. Run the following command:

.. code-block:: bash

   $ chef generate app name
   
where ``name`` is a name that you have chosen for the both the |chef repo| and the default cookbook. We are calling ours ``chef-repo``; you can call yours whatever you want. (We also renamed the default cookbook to ``chefdocs``, which is totally optional.) You should have a directory structure at ``/Users/your_username/cookbook_name/`` similar to::

   /chef-repo
     /.git
	 .gitignore
     .kitchen.yml
     /cookbooks
       /chefdocs
         Berksfile
         chefignore
         metadata.rb
         /recipes
           default.rb
     README.md

Run the |chef client|
-----------------------------------------------------
The |chef client| includes a mode called "local mode", which runs the |chef client| locally on your machine. Local mode allows you to run recipes and work locally with the code you are using to run your business. Local mode does not require a connection to a |chef server|, public or private keys, or configuring of nodes. (Though we'll do all of these things later!) Many people use local mode for simple, local testing of recipes and cookbooks, often as a pre-cursor to running unit and integration tests against the same recipes and cookbooks.

Open the ``default.rb`` recipe in the cookbook you just created. Add the following resource to that recipe:

.. code-block:: ruby

   file "#{ENV['HOME']}/test.txt" do
     content 'This file created by Chef!'
   end

This recipe creates a file called ``test.txt`` at the path defined by the ``HOME`` environment variable. (To view that path, run ``echo "$HOME"`` in the command shell.)

Next, we'll run the |chef client|. This is done via the command line and from within the |chef repo|. Use the ``--local-mode`` flag to run the |chef client| in local mode. Use the ``--override-runlist`` flag to run only the recipe we have just created. (More about the run-list later.) For a cookbook's default recipe, only the name of the cookbook needs to be specified, as that maps to the default recipe. The following command will create the file ``test.txt``:

.. code-block:: bash

   $ chef-client --local-mode --override-runlist chefdocs

where ``chefdocs`` is the name of your cookbook.

As the |chef client| adds the file to your system, output similar to the following is shown:

.. code-block:: bash

   Starting Chef Client, version 11.14.0.alpha.1
   [2014-06-13T16:13:10-07:00] WARN: No config file found or specified on command line, using command line options.
   [2014-06-13T16:13:11-07:00] WARN: SSL validation of HTTPS requests is disabled. 
   [2014-06-13T16:13:13-07:00] WARN: Run List override has been provided.
   [2014-06-13T16:13:13-07:00] WARN: Original Run List: []
   [2014-06-13T16:13:13-07:00] WARN: Overridden Run List: [recipe[chefdocs]]
   resolving cookbooks for run list: ["chefdocs"]
   Synchronizing Cookbooks:
     - chefdocs
   Compiling Cookbooks...
   Converging 1 resources
   Recipe: chefdocs::default
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

# We'll come back to working with |chef| later on, but the next step is to familiarize yourself with resources and cookbooks.

About Resources
=====================================================
.. include:: ../../includes_resources_common/includes_resources_common_generic.rst

The |chef client| includes many built-in resources, but several of them are used much more often than others: |resource execute|, |resource directory|, |resource package|, |resource service|, |resource file|, |resource template|, |resource user|, |resource script|, and |resource scm_git|.

For the full list of built-in |chef| resources, see `Resources <http://docs.opscode.com/resource.html#resources>`_. You can also `create your own resources <http://docs.opscode.com/lwrp_custom.html>`_ or `use the resources built into the community cookbooks <http://supermarket.getchef.com>`_.

See the sections below for quick overviews of the most popular resources, plus links to the individual reference pages for each of them.

Execute Commands
-----------------------------------------------------
Commands are executed using the |resource execute| resource using an attribute to specify the actual command to run. See :doc:`execute </resource_execute>` for more information about executing commands.

Manage Directories
-----------------------------------------------------
Directories are hierarchies of folders that comprise all the information stored on a computer. There are two ways to manage directories. The first is via the |resource directory| resource, which manages directories starting from the root directory. And the second is the |resource remote_directory|, which transfers directory structures defined in cookbooks to nodes. See :doc:`directory </resource_directory>` for more information about managing directories. If the directory is defined in a cookbook, use :doc:`remote_directory </resource_remote_directory>` instead.

Manage Packages
-----------------------------------------------------
Packages are collections of files that comprise software applications or some part of an operating system. Use the package resource to manage these packages, unless they are sourced via |rubygems| and installed directly from within recipes or are sourced from a cookbook. See :doc:`package </resource_package>` for more information about managing packages. There are quite a few platform-specific package resources as well, though most of the time simply using the |resource package| is all that's necessary. For packages that are located in cookobooks, use :doc:`chef_gem </resource_chef_gem>`. And for packages that are only included via recipes, use :doc:`gem_package </resource_gem_package>`.

Manage Services
-----------------------------------------------------
Services can be started, stopped, enabled, disabled, reloaded, and restarted. See :doc:`service </resource_service>` for more information about managing services.

Manage Files
-----------------------------------------------------
Files are managed in several ways. The |resource file| resource manages files that are already present on a node. Files are transferred to nodes from cookbooks using the |resource cookbook_file| resource and are transferred to nodes from remote locations using the |resource remote_file| resource. See :doc:`file </resource_file>` for more information about managing files, :doc:`remote_file </resource_remote_file>` for transferring files from remote locations, and :doc:`cookbook_file </resource_cookbook_file>` for transferring files that are located in cookbooks.

Manage Templates
-----------------------------------------------------
Templates are used to generate files based on variables and logic contained within the template file. |chef| uses |erb| templates and |ruby| expressions and statements to define the template file. Template source files must be located within cookbooks. See :doc:`template </resource_template>` for more information about managing files using |erb| templates.

Manage Users, Groups
-----------------------------------------------------
Users and groups can be added, updated, removed. User passwords can be locked and unlocked. See :doc:`user </resource_user>` for more information about managing users and user passwords. The :doc:`group </resource_group>` resource manges groups.

Use Script Interpreters
-----------------------------------------------------
Script interpreters execute scripts on a node, similar to the |resource execute| resource, and with the ability to specify the interpreter that the |chef client| should use. See :doc:`script </resource_script>` for more (general) information about using scripts in recipes. Interpreter-specific resources are available, with :doc:`bash </resource_bash>` being the most popular. Also available: :doc:`csh </resource_csh>`, :doc:`perl </resource_perl>`, :doc:`powershell_script </resource_powershell_script>`, :doc:`python </resource_python>`, and :doc:`ruby </resource_ruby>`. Two |windows|-specific resources are also available: :doc:`batch </resource_batch>` and :doc:`powershell_script </resource_powershell_script>`.

Source Control
-----------------------------------------------------
|git| is a very popular version source control tool. The |resource scm_git| resource is used to manage files that exist in a |git| repository. There is also a resource for :doc:`subversion </resource_subversion>`, another popular version source control tool.

About Cookbooks
=====================================================
.. include:: ../../includes_cookbooks/includes_cookbooks.rst

Every cookbook follows a defined structure, but individiaul cookbooks can take on many different styles depending on how your organization wants to manage its code, who authored them, and how they are intended to be used. Some cookbooks contain only a single, default recipe. Others may contain only a library file. Some may contain only a few attributes. And other cookbooks may contain several custom resources along with many attributes and templates, and so on.

Some cookbooks you will build yourself. Some cookbooks will be provided by the community. Most community cookbooks will be managed using |berkshelf|, which is a dependency manager included in the |chef dk|. Occasionally, a community cookbook will be forked, but more often a wrapper cookbook is created to handle your organization-specific requirements while still allowing use of the community cookbook.

The most important thing to know about cookbooks is that there are lots of ways to build good ones. There are patterns to follow, there are guidelines. There are recomended ways of dealing with attributes. There are recommended ways of creating custom resources. But ultimately, a good cookbook is the one that works for your organization. Ideally, this cookbook works across your infrastructure. Most organizations have a mix of private (internal) and public (community) cookbooks in use in their organization.

Cookbook Patterns
-----------------------------------------------------
.. include:: ../../includes_cookbook/includes_cookbook_pattern.rst

Conclusion
=====================================================
.. include:: ../../includes_chef/includes_chef_why_principles.rst

.. include:: ../../includes_chef/includes_chef_why_you_know_best.rst

For more information ...
-----------------------------------------------------
.. include:: ../../includes_chef/includes_chef_for_more_info.rst