.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

When |chef| loads cookbook attribute files, it does so in alphabetical order for all the cookbooks. If you need to ensure that one attribute file is loaded before another you can use the ``include_attribute`` method.

.. code-block:: ruby

   include_attribute "name_of_cookbook"

For example, if a |ruby on rails| cookbook requires that |apache| attributes are available first):

.. code-block:: ruby

   include_attribute "apache2"

This will load the ``apache/attributes/default.rb`` file before continuing the processing of the current attribute file. If a specific attributes file (and not the default attributes file) needs to be loaded, then use the double colon (::) pattern (similar to the ``include_recipe`` method):

.. code-block:: ruby

   include_attribute "rails::tunables"

This will load the ``attributes/tunables.rb`` file in the ``rails`` cookbook.