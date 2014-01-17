=====================================================
About |ohai|
=====================================================

.. include:: ../../includes_ohai/includes_ohai.rst

.. include:: ../../includes_ohai/includes_ohai_platforms.rst

Automatic Attributes
=====================================================
.. include:: ../../includes_ohai/includes_ohai_automatic_attribute.rst

**Get a list of automatic attributes for a node**

.. include:: ../../includes_ohai/includes_ohai_attribute_list.rst

.. note:: |note see_attributes_overview|

Attribute Persistence
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_persistence.rst

Attribute Precedence
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_precedence.rst

Install |ohai|
=====================================================
|ohai| is a requirement for the |chef client| and must be installed whenever (and wherever) the |chef client| is installed. |ohai| is always installed as part of the |chef client| installation, but it may be installed separately.

Install from Github
-----------------------------------------------------
.. include:: ../../step_ohai/step_ohai_install_from_git.rst

Install from RubyGems
-----------------------------------------------------
.. include:: ../../step_ohai/step_ohai_install_from_rubygem.rst

Install on Microsoft Windows
-----------------------------------------------------
.. include:: ../../step_ohai/step_ohai_install_on_windows.rst

.. deprecate the following sections on v7 release: "Create Ohai Plugins", "Create a Simple Plugin", "Load a Plugin", "Use a Mash", "Extend a Plugin", and "Work with Platforms" and replace with a link to docs.opscode.com/ohai_custom.html.

Create |ohai| Plugins
=====================================================
.. this is Ohai 6 information that will be deprecated and replaced by Ohai 7 information

|ohai| is a requirement for the |chef client| and is installed whenever (and wherever) the |chef client| is installed. |ohai| can also be installed separately.

Create a Simple Plugin
-----------------------------------------------------
.. this is Ohai 6 information that will be deprecated and replaced by Ohai 7 information

When additional data about a system infrastructure is required, a custom |ohai| plugin can be used to gather that information. An |ohai| plugin is a |ruby| DSL. For example, the following is about as simple as it gets:

.. code-block:: ruby

   provides "orly"
   orly "yeah, rly."


Run a Plugin
-----------------------------------------------------
.. this is Ohai 6 information that will be deprecated and replaced by Ohai 7 information

To load a plugin, create a "plugins" folder and put the above code in the plugins/orly.rb file.

Now to fire up irb (and assuming the directory "plugins" is the current folder; if not adjust your path):

.. code-block:: ruby

   >> require 'ohai'
   >> Ohai::Config[:plugin_path] << './plugins'
   >> o = Ohai::System.new
   >> o.all_plugins
   >> o.orly #=> "yea, rly"


Use a Mash
-----------------------------------------------------
.. this is Ohai 6 information that will be deprecated and replaced by Ohai 7 information

Most of the information we want to lookup would be nested in some way, and |ohai| tends to do this by storing the data in a mash. This can be done by creating a new mash and setting the attribute to it.

In plugins/canhas.rb:

.. code-block:: ruby

   provides "canhas"
   canhas Mash.new
   canhas[:burger] = "want"


Work with Platforms
-----------------------------------------------------
.. this is Ohai 6 information that will be deprecated and replaced by Ohai 7 information

One of the main reasons for using |ohai| is to gather information regardless of the operating system. Luckily this is made easy by optionally loading recipes based on the platform. With that platform specific calls abstracted away you can keep your code DRY.

The built-in plugins that come with |ohai| use the following trick to load platform specific code. It works by creating a base cross-platform plugin that loads the platform specific plugin from a subdirectory. In plugins/lolcode.rb:

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

Checkout the |ohai| os.rb file for the list of platform names.

All of these examples can be found in the ``ohai-plugin-howto`` |github| repo, you should be able to clone that and run the ruby scripts in the repo's root directory. If you figure out any other handy tricks please fork the project and add them.


Extend a Plugin
-----------------------------------------------------
.. this is Ohai 6 information that will be deprecated and replaced by Ohai 7 information

|ohai| makes it very easy to extend a current plugin with new information. Simply require the plugin you want to extend and extend away. In this example we want to add LOLCODE to languages.

In plugins/lolcode.rb:

.. code-block:: ruby

   provides "languages/lolcode"
   require_plugin "languages"
   languages[:lolcode] = Mash.new
   languages[:lolcode][:version] = "TEH VERSHIONS"


The ohai Cookbook
=====================================================
.. include:: ../../step_ohai/step_ohai_download_cookbook.rst

Default Location
-----------------------------------------------------
.. include:: ../../step_ohai/step_ohai_plugin_change_path.rst

Upload Custom Plugins
-----------------------------------------------------
.. include:: ../../step_ohai/step_ohai_plugin_upload.rst

Add |ohai| to a Run-list
-----------------------------------------------------
.. include:: ../../step_ohai/step_ohai_add_to_run_list.rst

Community |ohai| Plugins
=====================================================
.. include:: ../../includes_ohai/includes_ohai_plugins.rst