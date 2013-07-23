=====================================================
About Ohai
=====================================================

.. warning:: |note doc_version_11-4|

.. include:: ../../includes_ohai/includes_ohai.rst

Automatic Attributes
=====================================================
.. include:: ../../includes_ohai/includes_ohai_automatic_attribute.rst

**Get a list of automatic attributes for a node**
.. include:: ../../includes_ohai/includes_ohai_attribute_list.rst

.. note:: Attributes can be configured in cookbooks (attribute files and recipes), roles, and environments. In addition, |ohai| collects attribute data about each node at the start of the |chef| run. See the :doc:`overview of attributes </chef_overview_attributes>` for more information about how all of these attributes fit together.

Attribute Persistence
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_persistence.rst

Attribute Precedence
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_precedence.rst

Install |ohai|
=====================================================
|ohai| is a requirement for |chef| and is installed whenever (and wherever) |chef| is installed. |ohai| can also be installed separately from |chef|.

Install from Github
-----------------------------------------------------
.. include:: ../../step_ohai/step_ohai_install_from_git.rst

Install from RubyGems
-----------------------------------------------------
.. include:: ../../step_ohai/step_ohai_install_from_rubygem.rst

Install on Microsoft Windows
-----------------------------------------------------
.. include:: ../../step_ohai/step_ohai_install_on_windows.rst

Create |ohai| Plugins
=====================================================
|ohai| is a requirement for |chef| and is installed whenever (and wherever) |chef| is installed. |ohai| can also be installed separately from |chef|.

Create a Simple Plugin
-----------------------------------------------------
When additional data about a system infrastructure is required, a custom |ohai| plugin can be used to gather that information. An |ohai| plugin is a |ruby| DSL. For example, the following is about as simple as it gets:

.. code-block:: ruby

   provides "orly"
   orly "yeah, rly."

Load a Plugin
-----------------------------------------------------
To load a plugin, create a "plugins" folder and put the above code in the ``plugins/orly.rb`` file.

Now to fire up irb (and assuming the directory "plugins" is the current folder; if not adjust your path):

.. code-block:: bash

   >> require 'ohai'
   >> Ohai::Config[:plugin_path] << './plugins'
   >> o = Ohai::System.new
   >> o.all_plugins
   >> o.orly #=> "yea, rly"

Use a Mash
-----------------------------------------------------
Most of the information we want to lookup would be nested in some way, and |ohai| tends to do this by storing the data in a Mash. This can be done by creating a new mash and setting the attribute to it.

In plugins/canhas.rb:

.. code-block:: ruby

   provides "canhas"
   canhas Mash.new
   canhas[:burger] = "want"

Work with Platforms
-----------------------------------------------------
One of the main reasons for using |ohai| is to gather information regardless of the operating system. Luckily this is made easy by optionally loading recipes based on the platform. With that platform specific calls abstracted away you can keep your code DRY.

The builtin plugins that come with |ohai| use the following trick to load platform specific code. It works by creating a base cross-platform plugin that loads the platform specific plugin from a subdirectory. In plugins/lolcode.rb:

.. code-block:: ruby

   provides "languages/lolcode"
   require_plugin "languages"
   require_plugin "#{os}::lolcode"
   
   languages[:lolcode] = Mash.new unless languages[:lolcode]
   languages[:lolcode][:version] = "TEH VERSHIONS"

In plugins/darwin/lolcode.rb:

.. code-block:: ruby

   provides "languages/lolcode"
   require_plugin "languages"
   languages[:lolcode] = Mash.new unless languages[:lolcode]
   languages[:lolcode][:platform] = "MACKERS"

Checkout ohai's os.rb for the list of platform names.

All of these examples can be found in the ``ohai-plugin-howto`` |github| repo, you should be able to clone that and run the ruby scripts in the repo's root directory. If you figure out any other handy tricks please fork the project and add them.

Extend a Plugin
-----------------------------------------------------
|ohai| makes it very easy to extend a current plugin with new information. Simply require the plugin you want to extend and extend away. In this example we want to add LOLCODE to languages.

In plugins/lolcode.rb:

.. code-block:: ruby

   provides "languages/lolcode"
   require_plugin "languages"
   languages[:lolcode] = Mash.new
   languages[:lolcode][:version] = "TEH VERSHIONS"

Use the Ohai Cookbook
-----------------------------------------------------
.. include:: ../../step_ohai/step_ohai_add_ohai_cookbook_to_chef_repo.rst

Change Default Location
-----------------------------------------------------
.. include:: ../../step_ohai/step_ohai_change_plugin_path.rst

Upload a Custom Plugin
-----------------------------------------------------
.. include:: ../../step_ohai/step_ohai_upload_custom_plugin.rst

Use the ohai Recipe
-----------------------------------------------------
.. include:: ../../step_ohai/step_ohai_upload_custom_plugin.rst

Disable a Plugin
=====================================================
.. include:: ../../step_ohai/step_ohai_disable_plugin.rst

Community |ohai| Plugins
=====================================================
.. include:: ../../includes_ohai/includes_ohai_plugins.rst