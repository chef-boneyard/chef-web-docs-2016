.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

When Chef loads cookbook attribute files, it does so in alphabetical order for all the cookbooks. If you need to ensure that one attribute file is loaded before another (for example, if your Rails cookbook requires that the Apache attributes are available first) you can use the include_attribute method, like so:

include_attribute

.. code-block:: ruby

   include_attribute "apache2"

This loads apache/attributes/default.rb before continuing the processing of the current attribute file.

The syntax for this follows the same "double colon" pattern as include_recipe, so a statement like:

include_attribute

.. code-block:: ruby

   include_attribute "rails::tunables"

This loads the attributes/tunables.rb file in a rails cookbook.