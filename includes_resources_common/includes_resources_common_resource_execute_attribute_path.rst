.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``path`` property is not implemented by any provider in any version of the |chef client|. Starting with |chef client| 12, using the ``path`` property will return a warning. Starting with |chef client| 13, the ``path`` property is deprecated and using it will return an exception. Cookbooks that currently use the ``path`` property should be updated to use the ``environment`` property instead. For example:

.. code-block:: ruby

   execute "mycommand" do
     environment "PATH" => "/my/path/to/bin:#{ENV["PATH"]}"
   end
