
===================================
Knife Command Line Reference
===================================

.. include:: ../../swaps/swap_descriptions.txt
.. include:: ../../swaps/swap_names.txt


.. include:: ../../includes_knife/includes_knife.rst


Working with Knife
=====================================================
|knife| runs from a management workstation and sits in-between a |chef server| and an organization's infrastructure. |knife| interacts with a |chef server| by using the same REST API that is used by a |chef client|. Role-based authentication controls (RBAC) can be used to authorize changes when |knife| is run with |chef hosted| or |chef private|. |knife| is configured during workstation setup, but subsequent modifications can be made using the |knife rb| configuration file.

JSON Data Format
-----------------------------------------------------
All data is entered using a text editor in |json| format, unless the ``--no-editor`` option is entered as part of a command. JSON is a common, language-independent data format that provides a simple text representation of arbitrary data structures. For more information about JSON, see http://www.json.org/ or http://en.wikipedia.org/wiki/JSON.

Using Quotes
-----------------------------------------------------
Values can be entered with double quotes (" ") or single quotes (' '), but this should be done consistently.

Sub-commands
-----------------------------------------------------
|knife| comes with a collection of built in sub-commands that work together to provide all of the functionality required to take specific actions against any object in a |chef| environment, including cookbooks, nodes, roles, data bags, and environments. A |knife| plugin extends the functionality beyond built-in sub-commands.

|knife| has the following sub-commands: ``bootstrap``, ``client``, ``configure``, ``cookbook``, ``cookbook site``, ``data bag``, ``environment``, ``exec``, ``index rebuild``, ``node``, ``recipe list``, ``role``, ``search``, ``ssh``, ``status``, and ``tag``.

|opscode| provides the following plug-ins, which work the same as built-in sub-commands (including common options), but must be downloaded separately from |github|: ``azure``, ``bluebox``, ``ec2``, ``eucalyptus``, ``google``, ``hp``, ``linode``, ``openstack``, ``rackspace``, ``slicehost``, ``terremark``, and ``windows``.

.. note:: The following sub-command runs only against the |chef open server|: ``index rebuild``.

The |chef| community provides many other plugins for |knife|: http://community.opscode.com/.

Syntax
-----------------------------------------------------
All |knife| sub-commands have the following syntax::

   knife subcommand [ARGUMENT] (options)

Each sub-command has its own set of arguments and options.

.. note:: All syntax examples in this document show variables in ALL_CAPS. For example ``-u PORT_LIST`` (where PORT_LIST is a comma-separated list of local and public UDP ports) or ``-F FORMAT`` (where FORMAT determines the output format, either ``summary``, ``text``, ``json``, ``yaml``, or ``pp``). These variables often require specific values that are unique to your organization's |chef| environment.

Common Options
-----------------------------------------------------
.. include:: ../../includes_knife/includes_knife_common_options.rst

Contents:

.. toctree::
   :maxdepth: 1
   :titlesonly:

   man_knife_azure
   man_knife_bluebox
   man_knife_bootstrap
   man_knife_client
   man_knife_configure
   man_knife_cookbook_site
   man_knife_cookbook
   man_knife_data_bag
   man_knife_ec2
   man_knife_environment
   man_knife_eucalyptus
   man_knife_exec
   man_knife_google
   man_knife_hp
   man_knife_index_rebuild
   man_knife_linode
   man_knife_node
   man_knife_openstack
   man_knife_rackspace
   man_knife_recipe_list
   man_knife_role
   man_knife_search
   man_knife_ssh
   man_knife_status
   man_knife_tag
   man_knife_terremark
   man_knife_windows   




