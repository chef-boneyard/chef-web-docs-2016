.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

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
