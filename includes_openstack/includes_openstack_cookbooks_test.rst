.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Cookbook testing uses `foodcritic <http://foodcritic.io/>`_, `rubocop <https://github.com/bbatsov/rubocop>`_, and `Rake <https://github.com/ruby/rake>`_, all wrapped up in the `ChefDK <https://downloads.chef.io/chef-dk/>`_ to run tests. Tests are defined using a Rakefile and StackForge's Jenkins gates on them.

To run tests from the cookbook directory:

.. code-block:: bash

   $ # Install the ChefDK first
   $ chef exec rake
