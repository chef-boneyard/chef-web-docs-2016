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
In |chef 10| and previous, you could use special "knockout prefix" attribute values beginning with ``!merge`` to make the deep merge algorithm remove values from arrays. This feature was very seldom used, confusing, and greatly increased the time and space complexity of the deep merge implementation. This feature is removed in |chef 11|, and attributes containing the "knockout prefix" will trigger an error upon merge.

If you need to selectively remove elements from arrays in your attributes, you should place this logic in a cookbook. Combined with other fixes to attributes in |chef 11|, you can put this logic in an attributes file, which is the most natural place for it.

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


Changes for Data Bag Encryption
-----------------------------------------------------
In |chef 10|, objects in encrypted data bag items are serialized to |yaml| before being encrypted. Unfortunately, discrepancies between |yaml| engines in different versions of |ruby| (in particular, 1.8.7 and 1.9.3) may cause silent corruption of serialized data when decrypting the data bag (the version stored on the |chef server| is untouched and can be correctly deserialized with the same |ruby| version that was used to create it, however).

Because the corruption is silent, there is no way for the |chef client| to detect it; furthermore, all workaround possibilities we've investigated have severe limitations. Additionally, we wanted to modify the encrypted data bag item format to support using a random initialization vector each time a value is encrypted, which provides protection against some forms of cryptanalysis. In order to solve these issues, we've implemented a new encrypted data bag item format:

* The user interface to encrypted data bags is unchanged. This change only affects the format of the encrypted values.
* |chef 11| clients will be able to read encrypted data bags created with either |chef 10| or |chef 11|.
* |chef 10| clients |chef 10-18| and above will be able to read encrypted data bags created with either |chef 10| or |chef 11|
* |chef 10| clients version |chef 10-16| and lower cannot read encrypted data bags created with |chef 11|
* |chef 11| knife commands will only create data bags in the new format.
* |chef 10| knife commands will only create data bags in the old format.

Diagnosing Compatibility Errors
+++++++++++++++++++++++++++++++++++++++++++++++++++++
When trying to decrypt a |chef 11| format data bag item with |chef 10-16| or lower, you will see an error like this:

.. code-block:: bash

   shell$ knife data bag show secret-10-stable bar -c ~/opscode-ops/chef-oss-dev/.chef/knife.rb -s password
   ERROR: knife encountered an unexpected error
   This may be a bug in the 'data bag show' knife command or plugin
   Please collect the output of this command with the `-VV` option before filing a bug report.
   Exception: NoMethodError: undefined method `unpack' for #<Hash:0x007ff5b264e1f0>

The above error output is from |knife|; the |chef client| will fail with a similar error.

How to Upgrade
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Before upgrading on any workstation you use to create/edit encrypted data bag items, upgrade |chef client| on all machines that use encrypted data bags to version |chef 10-18| or above. Once your |chef client| fleet is upgraded, you can start using |chef 11| on your workstation (the box you create/update encrypted data bag items on).

In order to get the benefits of improved security with the new data bag item format, it's recommended that you re-upload all of your encrypted data bag items once you've migrated to compatible versions of |chef client|. To migrate your data bag items, simply edit them with ``knife data bag edit`` or upload them with ``knife data bag from file``, whichever you normally do. |chef 11| will automatically upload your data bag items in the new format.

Server Versions
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Because encrypted data bag items are implemented as a client-side layer on top of regular data bag items, the format change is transparent to the server. You can begin using |chef 11| data bags even if your server is version |chef 10|.


Non-recipe File Evaluation Includes Dependencies
---------------------------------------------------------------
In |chef 10| and lower, library, attribute, lightweight resource, and resource definition files are loaded in undefined order (based on the order given by the |ruby| Hash implementation, which differs based on version and vendor patching). In |chef 11|, these files are loaded according to the following logic:

* The expanded run_list is converted into a list of cookbooks in the same order
* Each cookbook's dependencies are inserted into the cookbook list before the cookbook that depends on them.
* Duplicates are removed

For |chef client| users, there should be no negative impacts from this change, as the previous order was essentially random. For |chef solo| users, the new loading logic means that files belonging to cookbooks which exist in the ``cookbook_path`` but are not in the expanded ``run_list`` or dependencies of the cookbooks in the expanded ``run_list`` will no longer be loaded (in |chef 10|, all non-recipe files from all cookbooks in the cookbook path were loaded). Additionally, |chef solo| users will now see ``CookbookNotFound`` errors when a cookbook is listed as a dependency in the metadata but not present on disk. The error message will look like this:

.. code-block:: bash

   FATAL: Chef::Exceptions::CookbookNotFound: Cookbook runit not found. If you're loading runit from another cookbook, make sure you configure the dependency in your metadata



|knife| Configuration Parameter Changes
-----------------------------------------------------
In |chef 10|, it is difficult and error-prone to ensure that configuration parameters are applied in the right order. Configuration should be applied in the following order:

#. Default values
#. Values set in |knife rb|
#. Values passed by command line option

Because of the way the the ``mixlib-cli`` library is implemented, it is difficult to determine which values are defaults and which values are user-supplied command line options. |chef 11| takes advantage of a new mode for ``mixlib-cli`` that keeps default values separate from user-supplied values. In the configuration process, |knife| automatically applies config:

#. Default values set in the mixlib-cli DSL
#. Configuration settings under Chef::Config[:knife]
#. User supplied values parsed by mixlib-cli

Depending on how |knife| plugin authors have worked around the |chef 10| behavior, it's possible that this change will lead to incorrect values being used for configurable parameters. The |opscode|-maintained cloud plugins have been reviewed and should work correctly on both |chef 10| and |chef 11|.

When writing |knife| plugins for |chef 11|, plugin authors are encouraged to define default settings using the ``mixlib-config`` DSL, like this:

.. code-block:: ruby

   option :ssh_user,
     :short => "-x USERNAME",
     :long => "--ssh-user USERNAME",
     :description => "The ssh username",
     :default => "root"

and access configurable values via the config hash with symbols, like this:

.. code-block:: ruby

   # The local variable isn't necessary, it's just here to clarify the example:
   ssh_user_name = config[:ssh_user]

If compatibility with |chef 10| is required, accessing configuration via a helper function like this will work correctly, but only if default values are NOT set with the ``mixlib-cli`` DSL.

.. code-block:: ruby

   def locate_config_value(key)
     key = key.to_sym
     config[key] || Chef::Config[:knife][key]
   end

Default values must be managed manually until support for |chef 10| is removed, for example, like this:

.. code-block:: ruby

   ssh_user_name = locate_config_value(:ssh_user) || "root"

Further information is available in the ticket: CHEF-3497 - Allow |knife rb| to implicitly provide all |knife| related options - FIX COMMITTED


Remote File Mirror Support May Break Subclasses	
---------------------------------------------------------------
In |chef 11|, |resource remote_file| now supports fetching files from a list of mirrors. As a result, the ``source`` parameter of the |resource remote_file| resource is internally stored as an array. This change is transparent to users of the |resource remote_file| resource; however, any library code that subclasses the |resource remote_file| resource---for example, to provide |amazon s3| support---will likely need to be updated to support and/or work around this change. 

To effectively revert the change so that the ``source`` parameter is a string, add code like this to your resource:
	
.. code-block:: ruby

   def source(args=nil)
     set_or_return(:source, args, :kind_of=>String)
   end

   def after_created
     true
   end

Alternatively, you can update the provider to handle the case that the ``source`` parameter is an array.

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


