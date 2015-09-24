=====================================================
Docs for |chef server osc| 11.1 ... 
=====================================================

.. include:: ../../includes_chef/includes_chef_11_index_osc.rst

The |chef server osc| is a centralized location where all of the objects needed by |chef| are stored, including data that has been uploaded from the |chef repo|, data that is needed by the |chef client| while it configures nodes, and data that is uploaded to the |chef server| by the |chef client| at the conclusion of every |chef client| run.

.. note:: This set of topics is only about the |chef server osc| server, version 11.1. For information about the |chef client|, |ohai|, cookbooks, and so on, see |url docs|.

Server Essentials
=====================================================
The server acts as a hub for all of the data needed by the |chef client| while it configures a node:

* A `node object <http://docs.chef.io/nodes.html>`_ exists for each node that is being managed by the |chef client|
* Each node object consists of a `run-list <http://docs.chef.io/nodes.html>`_ and a `collection of attributes <http://docs.chef.io/attributes.html>`_
* Cookbooks are the fundamental unit of configuration and policy distribution and include: `attribute files <http://docs.chef.io/attributes.html>`_, `definitions <http://docs.chef.io/definitions.html>`_, `files, <http://docs.chef.io/files.html>`_, `libraries <http://docs.chef.io/libraries.html>`_, `metadata <http://docs.chef.io/cookbook_repo.html>`_, `recipes <http://docs.chef.io/recipes.html>`_, `resources <http://docs.chef.io/resources.html>`_, `templates <http://docs.chef.io/templates.html>`_, and `versions <http://docs.chef.io/cookbook_versions.html>`_
* All data that is stored on the |chef server|---including everything uploaded to the server from the |chef repo| and by the |chef client|---is `searchable <http://docs.chef.io/chef_search.html>`_ from both recipes (using the `search method <http://docs.chef.io/dsl_recipe.html#search>`_ in the |dsl recipe|) and the workstation (using the `knife search <http://docs.chef.io/knife_search.html>`_ subcommand). The |chef client| does the actual configuration on `the nodes <http://docs.chef.io/nodes.html>`_. The |chef client| receives its instructions from cookbooks (`recipes <http://docs.chef.io/recipes.html>`_, mostly). The process of configuring a node is called `the chef-client run <http://docs.chef.io/nodes.html>`_. At the beginning of each run, the |chef client| `validates to the server <http://docs.chef.io/chef_client.html>`_, `collects important data about that node <http://docs.chef.io/ohai.html>`_, and then configures the node. At the end of each run, the |chef client| `reports the successes and failures that may have occurred <http://docs.chef.io/handlers.html>`_
* The |chef server| can apply `global policy settings <http://docs.chef.io/policy.html>`_ to all nodes across the organization, including for `data bags <http://docs.chef.io/data_bags.html>`_, `environments <http://docs.chef.io/environments.html>`_, and `roles <http://docs.chef.io/roles.html>`_
* The `authentication <http://docs.chef.io/auth.html#authentication>`_ process ensures that requests can only be made to the |chef server| by authorized users
* Users, once `authorized <http://docs.chef.io/auth.html#authorization>`_ can only perform certain actions

Server Components
=====================================================
The |chef server osc| acts as a hub for configuration data. The :doc:`components that make up the server </server_components>` work together to store cookbooks, provide a management layer, and databases that store cookbook and node data.

Install |chef server osc|
=====================================================
The |chef server| can be installed via download or by using the |api omnitruck|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/osc_11-1/install_server.html">Install the Enterprise Chef Server</a> </br>
   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/osc_11-1/api_omnitruck.html">Download the chef-client using the Omnitruck API</a> </br>

The |chef server| can be upgraded:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/osc_11-1/upgrade_server_open_source.html">Upgrade to Open Source Chef Server 11.0</a> </br>
   
Settings and Tools 
=====================================================
The following settings files are used to configure behavior for the |chef server|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/osc_11-1/config_rb_chef_server.html">chef-server.rb</a> </br>

The following command-line tools can be run on the |chef server|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/osc_11-1/ctl_chef_server.html">ctl-chef-server</a> </br>

APIs
=====================================================
The following APIs can be used to access data on the |chef server|:

.. raw:: html

   &nbsp;&nbsp;&nbsp;   <a href="http://docs.chef.io/release/osc_11-1/api_chef_server.html">Chef Server API</a> </br>


.. Hide the TOC from this file.


.. toctree::
   :hidden:

   api_chef_server
   config_rb_chef_server
   config_rb_chef_server_optional_settings
   ctl_chef_server
   install_server
   release_notes
   server_components
   upgrade_server_open_source