.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Starting with |chef client| 12, using the ``path`` attribute will return a ``NoMethodError`` exception. This is because the ``path`` attribute is not implemented by any provider in any of the previous versions of the |chef client|. Therefore, starting with |chef client| 12, the ``path`` attribute is removed entirely. Cookbooks that use the ``path`` attribute prior to |chef client| 12 should be updated to use the ``environment`` attribute before upgrading to |chef client| 12. For example:

.. code-block:: ruby

   execute "mycommand" do
     environment "PATH" => "/my/path/to/bin:#{ENV["PATH"]}"
   end
