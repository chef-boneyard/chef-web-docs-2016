.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The class name declares a plugin as a subclass of both |knife| and |chef|. For example:

.. code-block:: ruby
   
   class SubclassName < Chef::Knife
   
where ``SubclassName`` is the class name used by this plugin. The capitalization of this name is important. For example, ``OMG`` would have a |knife| command of ``knife o m g``, whereas ``Omg`` would have a |knife| command of ``knife omg``. Use the capitalization pattern to define the word grouping that best makes sense for the plugin subcommand.

A plugin can override an existing |knife| subcommand by using the same class name as the existing subcommand. For example, to override the current functionality of ``knife cookbook upload``, use the following class name:

.. code-block:: ruby

   class CookbookUpload < Chef::Knife

