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

Conclusion
=====================================================
.. include:: ../../includes_chef/includes_chef_why_principles.rst

.. include:: ../../includes_chef/includes_chef_why_you_know_best.rst

For more information ...
-----------------------------------------------------
.. include:: ../../includes_chef/includes_chef_for_more_info.rst