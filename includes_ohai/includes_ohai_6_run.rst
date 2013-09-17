.. This is an included how-to. 

To load a plugin, create a "plugins" folder and put the above code in the plugins/orly.rb file.

Now to fire up irb (and assuming the directory "plugins" is the current folder; if not adjust your path):

.. code-block:: ruby

   >> require 'ohai'
   >> Ohai::Config[:plugin_path] << './plugins'
   >> o = Ohai::System.new
   >> o.all_plugins
   >> o.orly #=> "yea, rly"
