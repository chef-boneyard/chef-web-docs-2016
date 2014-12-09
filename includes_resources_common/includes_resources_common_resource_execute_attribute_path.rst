.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``path`` attribute is not implemented by any provider in any version of the |chef client|. Starting with |chef client| 12, using the ``path`` attribute will return a warning. Starting with |chef client| 13, ``path`` is deprecated and using it will return an exception. Cookbooks that currently use the ``path`` attribute should be updated to use the ``environment`` attribute instead. For example:

.. code-block:: ruby

   execute "mycommand" do
     environment "PATH" => "/my/path/to/bin:#{ENV["PATH"]}"
   end
