.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|ohai| makes it very easy to extend a current plugin with new information. Simply require the plugin you want to extend and extend away. In this example we want to add LOLCODE to languages.

In plugins/lolcode.rb:

.. code-block:: ruby

   provides "languages/lolcode"
   require_plugin "languages"
   languages[:lolcode] = Mash.new
   languages[:lolcode][:version] = "TEH VERSHIONS"