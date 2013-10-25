.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

When the |chef client| loads cookbook attribute files, the |chef client| first identifies all of the cookbooks that are required, then identifies all of the attributes defined in those cookbooks, and then evaluates these attributes based on the order defined in the run-list. If one attribute file must be loaded before another, use the ``include_attribute`` method.

.. code-block:: ruby

   include_attribute "name_of_cookbook"

For example, if a cookbook requires that attributes from the |cookbook apache2| cookbook must be available, add the following:

.. code-block:: ruby

   include_attribute "apache2"

The |chef client| will load the ``apache2/attributes/default.rb`` file before continuing the processing of the current attribute file. If a specific attributes file (and not the ``default.rb`` attributes file) needs to be loaded, then use the double colon (``::``) pattern (similar to the ``include_recipe`` method), like the following:

.. code-block:: ruby

   include_attribute "apache2::mod_ssl"

This will load the ``apache2/attributes/mod_ssl.rb`` file in the |cookbook apache2| cookbook.