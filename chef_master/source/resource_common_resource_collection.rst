=====================================================
Run a Resource Before Anything Else
=====================================================

|chef| processes recipes in two phases:

#. First, each resource in the node object is identified and a resource collection is built. All recipes are loaded and the actions specified within them are identified.
#. The system is configured based on the resource collection. Each resource is mapped to a provider. The provider examines the node and then does the steps necessary to complete the action.

Sometimes, it may be necessary to ensure that a specific resource is configured before anything else, such as ensuring that a package is downloaded so that it may be used later. This can be done by setting up a ``Chef::Resource`` object and then calling the method that runs the action.

**Update a package cache**

It is important to make sure that an operating system's package cache is up to date before |chef| tries to install packages, otherwise there may be references to versions that no longer exist. For example, on |debian| or |ubuntu| systems, the |apt| cache needs to be updated. Use code similar to the following:

.. code-block:: ruby

   e = execute "apt-get update" do
     action :nothing
   end
   
   e.run_action(:run)

where ``e`` is created as a ``Chef::Resource::Execute`` |ruby| object. The ``action`` attribute is set to ``:nothing`` so that the ``run_action`` method can be used to tell |chef| to run the specified command. |opscode| provides a cookbook for doing this with |apt| (|debian| or |ubuntu|) and |pacman| (for |archlinux|). The preceding recipe can be placed at the top of a node's run list to ensure it is run before |chef| tries to install any packages.

**Install a RubyGem to use later**

A single |chef| run should configure a node completely. |chef| uses |ruby| as the recipe language, which means that anything that can be done with |ruby| can be done in a recipe. However, in some cases, a |rubygem| may need to be installed before anything else happens. For example, when a |mysql| database needs to interact with a recipe. This can be done with a recipe similar to the following: 

.. code-block:: ruby

   g = gem_package "mysql" do
     action :nothing
   end
   
   g.run_action(:install)
   
   Gem.clear_paths
   require 'mysql'

where similar to the previous example for updating package caches, this example creates a new |ruby| object called ``Chef::Resource::Package`` using the |rubygems| provider.

* The |mysql| |rubygem| compiles native extensions in C, so the appropriate packages for the operating system will also need to be installed. 
* ``Gem.clear_paths`` ensures that |chef| reloads the cache of available |rubygems|.
* ``require 'mysql'`` loads the |mysql| |rubygem| so that it can be used to connect to a |mysql| database.

**An anti-pattern**

Unfortunately, resources that are executed when the resource collection is being built cannot notify any resource that has yet to be added to the resource collection. For example:

.. code-block:: ruby

   execute "ifconfig"
   
   p = package 'vim-enhanced' do
     action :nothing
     notifies :run, "execute[ifconfig]", :immediately
   end
   p.run_action(:install)

In some cases, the better approach may be to install the package before the resource collection is built to ensure that it is available to other resources later on. Or, something like the following can be used:

.. code-block:: ruby

   p = package "foo" do
     #parameters
   end
   p.run_action(:install)
   
   if p.updated_by_last_action?
     #Call the resource that we want to "notify"  
   end 


