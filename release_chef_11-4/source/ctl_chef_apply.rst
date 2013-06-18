=====================================================
chef-apply
=====================================================

|chef apply| is a simple tool that allows a single recipe to be run from the command line.

This command has the following syntax::

   chef-apply name_of_recipe.rb

This command does not have any options.

For example, to use |chef apply| to run a recipe named ``machinations.rb``, enter the following:

.. code-block:: bash

   $ chef-apply machinations.rb
