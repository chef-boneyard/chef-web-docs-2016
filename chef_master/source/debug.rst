=====================================================
Debug Recipes and chef-client Runs
=====================================================

.. include:: ../../includes_chef/includes_chef.rst

Elements of good approaches to building cookbooks and recipes that are reliable include:

* A consistent syntax pattern when constructing recipes
* Using the same patterns in Ruby
* Using platform resources before creating custom ones
* Using community-authored lightweight resources before creating custom ones

Ideally, the best way to debug a recipe is to not have to debug it in the first place. That said, the following sections discuss various approaches to debugging recipes and failed |chef client| runs.

Basic
=====================================================
Some simple ways to quickly identify common issues that can trigger recipe and/or |chef client| run failures include:

* Using an empty run-list
* Using verbose logging with |knife|
* Using logging with the |chef client|
* Using the |resource log| resource in a recipe to define custom logging

Empty Run-lists
-----------------------------------------------------
Using an empty run-list is an effective way to determine if the failed |chef client| run has anything to do with the recipes within the run-list. This is often an indicator that the underlying cause of the |chef client| run failure is a configuration issue. If a failure persists even if the run-list is empty, check the following:

* configuration settings in the |knife rb| file
* permissions for the user to both the |chef server| and to the node on which the |chef client| run is to take place
* blargh

Knife
-----------------------------------------------------
Use the verbose logging that is built into |knife|:

``-V``, ``--verbose``
  |verbose|

.. note:: Plugins do not always support verbose logging.

chef-client
-----------------------------------------------------
Use the verbose logging that is built into the |chef client|:

``-l LEVEL``, ``--log_level LEVEL``
   |log_level|

``-L LOGLOCATION``, ``--logfile c``
   |log_location| This is recommended when starting any executable as a daemon. Default value: ``STDOUT``.

log Resource
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_generic.rst

.. include:: ../../includes_resources/includes_resource_log.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_log_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_log_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_log_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_log_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**Set default logging level**

.. include:: ../../step_resource/step_resource_log_set_info.rst

**Set debug logging level**

.. include:: ../../step_resource/step_resource_log_set_debug.rst

**Create log entry when the contents of a data bag are used**

.. include:: ../../step_resource/step_resource_log_set_debug.rst

**Add a message to a log file**

.. include:: ../../step_resource/step_resource_log_add_message.rst

Advanced
=====================================================
Some more complex ways to debug issues with a |chef client| run include:

* Using the |cookbook chef_handler| cookbook
* Using the |chef shell| and the |resource breakpoint| resource to add breakpoints to recipes, and to then step through the recipes using the breakpoints
* Using the ``ignore_failure`` method in a recipe to force the |chef client| to move past an error to see what else is going on in the recipe, outside of a known failure
* Using |chef solo| to run targeted |chef client| runs for specific scenarios


chef_hander
-----------------------------------------------------
.. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_chef_handler.rst

.. note:: This cookbook is available from |github|: https://github.com/opscode-cookbooks/chef_handler.

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_chef_handler_attributes.rst

chef_handler LWRP
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_lightweight_resource.rst

.. include:: ../../includes_lwrp/includes_lwrp_chef_handler.rst

**Actions**

.. include:: ../../includes_lwrp/includes_lwrp_chef_handler_actions.rst

**Attributes**

.. include:: ../../includes_lwrp/includes_lwrp_chef_handler_attributes.rst

Usage
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following sections describe the usage options that are available in this cookbook.

**default**

.. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_chef_handler_usage_default.rst

**json_file**

.. include:: ../../includes_cookbooks_opscode/includes_cookbooks_opscode_chef_handler_usage_json_file.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. This is a temporary home for examples for this cookbook.

**Register the Chef::Handler::JsonFile handler**

.. include:: ../../step_lwrp/step_lwrp_chef_handler_register.rst

**Register the Chef::Handler::JsonFile handler during the compile phase**

.. include:: ../../step_lwrp/step_lwrp_chef_handler_enable_during_compile.rst

**Handle exceptions only**

.. include:: ../../step_lwrp/step_lwrp_chef_handler_exceptions_only.rst

**Enable the CloudkickHandler**

.. include:: ../../step_lwrp/step_lwrp_chef_handler_enable_cloudkickhandler.rst

chef-shell
-----------------------------------------------------
.. SET THIS UP FOR INCLUDES

|chef shell| is a recipe debugging tool for the |chef client| that allows the use of breakpoints within recipes. |chef shell| runs as an |ruby irb| session. |chef shell| supports both recipe and attribute file syntax, as well as interactive debugging features.

|chef shell| is tool that allows |knife| to be run using an |ruby irb| session. |chef shell| currently supports recipe and attribute file syntax, as well as interactive debugging features. |chef shell| has three run modes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Mode
     - Description
   * - Standalone
     - No cookbooks are loaded, and the run list is empty. This mode is the default.
   * - Solo
     - |chef shell| acts as a |chef solo| client. It attempts to load the |chef solo| configuration file and |json| attributes. If the |json| attributes set a run list, it will be honored. Cookbooks will be loaded in the same way that |chef solo| loads them. |chef solo| mode is activated with the ``-s`` or ``--solo`` command line option, and |json| attributes are specified in the same way as for |chef solo|, with ``-j /path/to/chef-solo.json``.
   * - Client
     - |chef shell| acts as a |chef client|. During startup, it reads the |chef client| configuration file and contacts the |chef server| to get attributes and cookbooks. The run list will be set in the same way as normal |chef client| runs. |chef client| mode is activated with the ``-z`` or ``--client`` options. You can also specify the configuration file with ``-c CONFIG`` and the server URL with ``-S SERVER_URL``.

breakpoint Resource
-----------------------------------------------------
.. include:: ../../includes_resources/includes_resource_generic.rst

.. include:: ../../includes_resources/includes_resource_breakpoint.rst

Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_breakpoint_syntax.rst

Actions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_breakpoint_actions.rst

Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_breakpoint_attributes.rst

Providers
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_resources/includes_resource_breakpoint_providers.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
|generic resource statement|

**A recipe without a breakpoint**

.. include:: ../../step_resource/step_resource_breakpoint_no.rst

**The same recipe with breakpoints**

.. include:: ../../step_resource/step_resource_breakpoint_yes.rst

ignore_failure Method
-----------------------------------------------------
All resources share a set of common actions, attributes, and so on. Use the following attribute in a resource to help identify where an issue within a recipe may be located:

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Attribute
     - Description
   * - ``ignore_failure``
     - |ignore_failure| Default value: ``false``.


chef-solo
-----------------------------------------------------
.. include:: ../../includes_chef_solo/includes_chef_solo.rst

.. include:: ../../includes_ctl_chef_solo/includes_ctl_chef_solo.rst

Options
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ctl_chef_solo/includes_ctl_chef_solo_options.rst

Examples
+++++++++++++++++++++++++++++++++++++++++++++++++++++
**Use a URL**

.. code-block:: bash

   $ chef-solo -c ~/solo.rb -j ~/node.json -r http://www.example.com/chef-solo.tar.gz

where ``-r`` uses the |resource remote_file| resource to retrieve the |tar gz| archive into the ``file_cache_path``, and then extract it to ``cookbooks_path``.

**Use a directory**

.. code-block:: bash

   $ chef-solo -c ~/solo.rb -j ~/node.json

where the ``-r URL`` option is not used. |chef solo| will look in the |solo rb| file to determine the directory in which cookbooks are located.

**Use a URL for cookbook and JSON data**

.. code-block:: bash

   $ chef-solo -c ~/solo.rb -j http://www.example.com/node.json -r http://www.example.com/chef-solo.tar.gz

where ``-r`` corresponds to ``recipe_url`` and ``-j`` corresponds to ``json_attribs``, both of which are configuration options in |solo rb|.