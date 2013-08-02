.. This is an included how-to. 

The following is an example of using the ``include_recipe`` method to include a recipe in a recipe:

.. code-block:: ruby

   include_recipe "java::#{node['java']['install_flavor']}"
