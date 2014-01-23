=====================================================
What's New in Chef 11.0
=====================================================

The following items are new for |chef 11| and/or are changes from |chef 10|.

.. note:: The |chef client| 11.2 release is updated for Ruby 1.9.3-p484, which resolves a security vulnerability that existed when using prior versions of |ruby|.

|chef client| and |chef solo|
=====================================================
The following changes have been made to |chef client| and |chef solo|. Some of these changes may break recipes (or may change their behavior); other changes may affect workflow or scripts.

|shef| is now |chef shell|
-----------------------------------------------------
|shef| has been renamed to |chef shell| (CHEF-2925). Recipe mode and attributes mode must now be entered using the ``recipe_mode`` and ``attributes_mode`` commands.

Node attribute changes
-----------------------------------------------------
In order to fix bugs and surprising behaviors with attributes, the implementation of ``Chef::Node::Attribute`` has been completely overhauled. The APIs for reading and writing values are now completely separate.

LWRPs AND Recipes Both Now Automatically Qualify loaded Gems
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Previously, in Chef 10, one could do the following in a recipe:

.. code-block:: ruby

   require 'win32/registry'
   registry = Win32::Registry::HKEY_LOCAL_MACHINE

In Chef 11 you must add "::" to the beginning to avoid the automatic addition of a "Chef::" qualifier.

.. code-block:: ruby

   registry = ::Win32::Registry::HKEY_LOCAL_MACHINE

Implicit writes removed
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Node attributes may no longer be set without specifying which precedence level to set. The following example is no longer valid:

.. code-block:: ruby

   node[:my_attribute] = "value"
   node.my_attribute_2 = "value"

When a precedence level was not specified, ``normal`` was assumed. For |chef 11|, the following example replaces the previous example:

.. code-block:: ruby

   node.normal[:my_attribute] = "value"
   node.normal.my_attribute_2 = "value"

Even with this change, please take a moment to consider if a cookbook should be using default-level attributes instead. In general, normal-level attributes are only required when a value needs to persist across |chef client| runs (such as auto-generated passwords) or when a node is a "special snowflake".

attribute="value" required
+++++++++++++++++++++++++++++++++++++++++++++++++++++
The following example is no longer valid:

.. code-block:: ruby

   node.default.my_attribute("value")

The following example replaces the previous example:

.. code-block:: ruby

   node.default.my_attribute = "value"

|knife| Output Changes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Previously, |knife| was adding the ID field to search results for node attributes. With |chef 11|, |knife| groups search results by the name of the node. For example, the old output looks something like:

.. code-block:: bash

   $ knife search roles:role_name -a ipaddress -fj
   2 items found
   {
     "results": 1,
     "rows": [
       {
         "ipaddress": "ec2-54-14-193-994.compute-9.amazonaws.com",
         "id": "i-a82555d2"
       }
       {
         "ipaddress": "ec2-994-79-96-9.compute-9.amazonaws.com",
         "id": "i-75555514"
       }
    ]
   }

and the new output looks something like:

.. code-block:: bash

   $ knife search roles:role_name -a ipaddress -fj
   2 items found
   {
     "results": 1,
     "rows": [
       {
         "i-a82555d2": {
           "ipaddress": "ec2-54-14-193-994.compute-9.amazonaws.com"
         }
       }
       {
         "i-75555514": {
           "ipaddress": "ec2-994-79-96-9.compute-9.amazonaws.com"
         }
       }
     ]
   }

This may require that search queries be updated for |chef 11|.

This change also affects |ohai| plugin output.For example, the old output looks something like:

.. code-block:: ruby

   {
     "results": 35,
     "rows": [
       {
         "virtualization": {
           "system": "kvm",
           "role": "host",
           "kvm": {
             "guests": {
               "EXAMPLE": {
                 "id": "28",
               },
             }
           }
         },
         "id": "virt30.ny4dev.EXAMPLE.com"
       }
   }

and the new output looks something like:

.. code-block:: ruby

   {
     "results": 35,
     "rows": [
       {
         "virt18.ny4dev.EXAMPLE.com": {
           "virtualization": {
             "system": "kvm",
             "role": "host",
             "kvm": {
               "guests": {
                 "EXAMPLE": {
                   "id": "3"
                
                 }
             }
           }
         }
       }
   }

Role and Environment Attribute Changes
-----------------------------------------------------
Role and environment default and override attributes are visible in attributes files. In |chef 11|, several changes have been made to attributes to enable you to include more complex logic in your attributes files. Though you should still try to keep your attributes files simple, you can effectively generate attributes composed of other attributes or based on a node's platform in attribute files now.

Computing attributes from attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
In |chef 10| and lower, code like the following will not work if you intend to modify the "source" attributes from roles or environments:

.. code-block:: ruby

   node.default[:app][:name] = "my_app"
   node.default[:app][:env] = "development"
   
   # In Chef 10.x, this will be the wrong value if you overwrite
   # node.default[:app][:name] or :env with roles.
   #
   # In Chef 11, it works correctly with role attributes.
   node.default[:app][:database] ="#{node.app.name}_#{node.app.env}"

In |chef 10| and lower, default and override attributes are stored as a single nested hash, and role and environment attributes are applied to the node after attribute files are evaluated so that role and environment attributes can overwrite attributes from attributes files. In |chef 11|, the above code will work as you expect, because role and environment attributes are stored separately from attributes from cookbooks, and are applied when the run_list is expanded (before any cookbook code is run).

Setting attributes by platform
+++++++++++++++++++++++++++++++++++++++++++++++++++++
In |chef 11|, ``Chef::Node`` now includes the platform introspection mixin, so you can use the following methods in attributes files:

.. code-block:: ruby

   node.platform?(:platform1, :platform2)
   node.value_for_platform()
   node.platform_family?(:family1, :family2)
   node.value_for_platform_family()

Behavioral changes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
In |chef 10|, you can set a default or override attribute in a recipe, and it will overwrite the default/override value from any role/environment/attribute file. In |chef 11|, node.default always sets a cookbook-level default, and node.override always sets a cookbook-level override. Since cookbook-level attributes have lower precedence than role or environment attributes, a default or override attribute set in a recipe will not overwrite a value set by a role or environment.

For example, given code like this:

.. code-block:: ruby

   # In a role.rb file:
   default_attributes "app_name" => "from-role"
   
   # In a recipe file:
   node.default["app_name"] = "from-recipe"

In |chef 10|, the value of node"app_name" will be "from-recipe" and in |chef 11|, the value will be "from-role" (assuming there are no competing normal or override attributes).

Likewise, if you take any action based on the value of attributes when evaluating attributes files, be aware that attributes from roles and environments will now be used to compute the attribute value.

node.run_state Replaced
-----------------------------------------------------
In |chef 10| and lower, you could see which recipes had been evaluated by looking at ``node.run_state[:seen_recipes]``. ``Chef::Node`` was not the correct place to track this information, and the previous implementation resulted in bugs where a recipe like ``nginx::default`` could be loaded after ``nginx``, even though they are the same recipe.

In the new implementation, this is tracked by ``Chef::RunContext``. The following example is no longer valid:

.. code-block:: ruby

   if node.run_state[:seen_recipes].key("my_recipe")
     # etc...
   end

Use the following approach instead:

.. code-block:: ruby

   # Check if a recipe has been loaded:
   if run_context.loaded_recipe?("my_recipe")
     # do something
   end

Subtractive Merge Removed
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_10-latest_attribute_deep_merge_subtract.rst

Chef::REST#run_request Removed
-----------------------------------------------------
The ``Chef::REST#run_request`` method is removed. Use ``api_request`` or ``streaming_request`` for low-level access, or (better) use the higher-level ``GET``, ``PUT``, ``POST``, ``DELETE``, and ``HEAD`` methods.


Delayed Notifications Changes
-----------------------------------------------------
In |chef 10| and lower, delayed notifications are lost when Chef does not converge successfully.

This fixes addresses the following scenario:

#. The |chef client| reconfigures a service
#. A delayed notification to restart the service is queued
#. An unrelated resource fails and halts the |chef client| run
#. Subsequent |chef client| runs don't restart the service because it hasn't been reconfigured during that run.

In |chef 11|, delayed notifications will run after the |chef client| run fails, and will be executed even if other delayed notifications fail. Conversely, if the |chef client| fails to configure a service and a restart action has been queued for that service, the service will be restarted and will probably be broken.

Single Notifies for Notification
-----------------------------------------------------
Previously you could specify multiple notifications in a single call to notifies with code like this:

.. code-block:: ruby

   notifies ( [ {resources("execute[something]") => [:action, :timing]},
   {resources("execute[something]") => [:action, :timing]},
   {resources("execute[something]") => [:action, :timing]} ] )

Instead of the above, just put multiple calls to notifies in your resource declaration:

.. code-block:: ruby

   file "/tmp/foo" do
     notifies :run, "execute[something]"
     notifies :run, "execute[another-thing]"
   end


Encryption Changes
-----------------------------------------------------
.. include:: ../../includes_data_bag/includes_data_bag_10-latest_changes_in_11.rst

Diagnosing Compatibility Errors
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_data_bag/includes_data_bag_10-latest_changes_in_11_diagnose_errors.rst

How to Upgrade
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_data_bag/includes_data_bag_10-latest_changes_in_11_upgrade.rst

Server Versions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_data_bag/includes_data_bag_10-latest_changes_in_11_server_versions.rst


Non-recipe File Evaluation Includes Dependencies
---------------------------------------------------------------
.. include:: ../../includes_chef_solo/includes_chef_solo_10-latest_file_evaluation.rst

|knife| Configuration Parameter Changes
-----------------------------------------------------
.. include:: ../../includes_plugin_knife/includes_plugin_knife_custom_parameters.rst

Remote File Mirror Support May Break Subclasses	
---------------------------------------------------------------
.. include:: ../../includes_resources/includes_resource_10-latest_remote_file_attributes_source_as_string.rst

The Server
=====================================================
The following items are new for |chef 11| server and/or are changes from |chef 10|.

The /clients endpoint returns |json| with a |json| class for edit (PUT) operations
----------------------------------------------------------------------------------
In |chef 8|-|chef 10|, the server's response to a ``PUT`` to ``/clients/:client_name`` does not include the ``json_class`` key, though other calls, such as ``GET``, do include this key. The client-side |json| implementation uses the presence of the ``json_class`` key as an indication that it should "inflate" the response into an instance of that class (otherwise, a plain hash object is returned). As a result, code that modifies a client (such as requesting a new key from the server) and parses the response with the |ruby| 'json' library must be modified to accept a ``Chef::ApiClient`` or a hash.

This change breaks the ``knife client reregister`` command in |chef 10-16| and earlier. Forward compatibility is introduced in |chef 10-18|.

The admin and validator flags are exclusive
-----------------------------------------------------
In |chef 11|, clients may not be both admins and validators at the same time. In the current alpha release, you can set the admin flag on the validator but it has no effect. In a future release, you may receive an error when attempting to set the validator flag on a client, or when attempting to create a client with both flags set.

.. note:: Exact behavior may change before release or in a minor version release after |chef 11|.

Strict checking of top-level |json| keys
-----------------------------------------------------
All API endpoints that process requests to create or update an object validate that the |json| sent by the client does not contain unknown top-level keys. A 400 error response will be returned if unknown top-level keys are encountered.

Creating an empty sandbox is now a 400 error
-----------------------------------------------------
Sandboxes are used as part of the protocol for uploading cookbook content. An empty sandbox cannot be used for anything. Creating such a sandbox may indicate a logic error in client code and is (mildly) wasteful of server resources.

Error messages included in server error responses have changed
---------------------------------------------------------------
As part of the move to |erchef|, error messages have been made more consistent. Code depending on specific error message text may be broken by these changes.

Some error codes have changes
-----------------------------------------------------
In a number of cases, |erchef| returns a more specific error status than the |chef 10| server. For example, returning 400 instead of 500 for some bad request data situations.

The ``chef-server`` cookbook has been completely rewritten to support an omnibus |chef server| install

knife reindex is not supported in |chef server 11|
-----------------------------------------------------
You can trigger a reindex of object data using ``chef-server-ctl reindex`` while logged into the |chef server|. The |knife| command is still present in the |chef 11| |chef client| for use with a |chef 10| server.

OpenId support has been removed
-----------------------------------------------------
Support for |open id| is no longer available to the |chef client|.


The Ruby server code has been removed
-----------------------------------------------------
As part of the move to Erchef, the Ruby API server code along with classes not needed by the client-side have been removed from the main |chef repo|.

knife cookbook delete --purge is ignored by |chef server 11|
------------------------------------------------------------
In |chef 11|, the server keeps track of which cookbooks use a given piece of cookbook content (via checksum). When a cookbook version is deleted, associated content will be deleted if not referenced by another cookbook version object. Therefore, there is no need for a purge operation when using the |chef 11| server.


Other Notable Changes
=====================================================
Changes that are not expected to be breaking, but are notable improvements.

Output Formatters are the Default Output when Running in the Console
---------------------------------------------------------------------
In |chef 11|, when output is to a TTY, the |chef client| will automatically use output formatters to display information about what it's doing. To accommodate this, the default log level is now ``auto``, which evaluates to ``warn`` when running with a TTY (so log messages will not obscure the output formatter output), and ``info`` when running without a TTY (so you get important information about changes being made to the system when output formatters are not active).

If you prefer one type of output over the other, you can force the |chef client| to use output formatters or logger output with ``--force-formatter`` or ``--force-logger``.

.. note:: In previous versions, bootstrapping templates would generally configure the log level to ``info`` in the |client rb| file. You may wish to change this to ``auto`` or remove the setting from your config file entirely.

``add_formatter`` setting
+++++++++++++++++++++++++++++++++++++++++++++++++++++

The ``add_formatter`` setting can be added to the client.rb file to specify a 3rd-party formatter:

.. code-block:: ruby

   add_formatter :name_of_3rd_party_formatter

For example::

   add_formatter :nyan

will add this formatter: https://github.com/andreacampi/nyan-cat-chef-formatter.

Inline Compile Mode for Lightweight Resources
-----------------------------------------------------
In |chef 11|, there is an optional "inline compilation" mode for lightweight resources, which is intended to make notifications work correctly for lightweight resources.

Without Inline Compilation
+++++++++++++++++++++++++++++++++++++++++++++++++++++
When not using inline compilation (it is disabled by default), any resources created in a lightweight provider's action blocks are inserted into the top level resource collection after the lightweight resource it belongs to. For example, given a resource collection like this:

* top_level_resource_one
* lwrp_resource
* top_level_resource_two

When ``lwrp_resource`` is executed, the resource collection will then be modified like this:

* top_level_resource_one (already processed)
* lwrp_resource (already processed)
* embedded_resource_one (created by lwrp)
* embedded_resource_two (created by lwrp)
* top_level_resource_two

This means that the ``lwrp_resource`` cannot correctly set its updated status based on the embedded resources, because it has finished executing before its embedded resources are processed.

With Inline Compilation
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Inline compilation is enabled by calling ``use_inline_resources`` at the top of your lightweight provider file. When this is enabled, the code in your action block is executed in a self contained |chef client| run, with its own compile and converge phase. If any embedded resources have been updated, the top-level lightweight resource is marked as updated, and any notifications set on it will be triggered normally. Within the embedded |chef client| run, resources in the top-level resource collection are invisible to the embedded resources, so embedded resources are not able to notify resources in the top-level resource collection.

LWRP Class Hierarchy Changes
-----------------------------------------------------
In |chef 11|, lightweight resources resources now inherit from a ``LWRPBase`` resource instead of directly inheriting from ``Chef::Resource``. Likewise, lightweight resources providers inherit from a ``LWRPBase`` provider instead of ``Chef::Provider``. This should not impact existing code for lightweight resources.

Partial Support in Templates
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_template_partials.rst

``render`` Method
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_template_partials_render_method.rst

Template Resource
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_template_partials_template_resource.rst
 
|chef apply|
-----------------------------------------------------
There is now a ``chef-apply RECIPE`` command that will run a single recipe with no ``JSON/run_list/config`` file required.

Miscellaneous
-----------------------------------------------------

* Locking is used to prevent simultaneous runs on |unix|-like systems
* |subcommand knife search| assumes node search when the object type is omitted
* |subcommand knife search| will search over roles, tags, |fqdn|, and IP addresses when the given query is not in |apache solr| format (does not contain a colon : character)
* |knife| essentials (|subcommand knife upload|, |subcommand knife download|, |subcommand knife diff|, and so on) have been merged into |chef 11-0|


