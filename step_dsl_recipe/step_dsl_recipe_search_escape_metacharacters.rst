.. This is an included how-to. 

When using the ``search`` method in a recipe, be sure to escape metacharacters, such as square brackets, like the following:

.. code-block:: ruby

   search(:node, 'run_list:recipe\[foo\:\:bar\]') do |matching_node|
     puts matching_node.to_s
   end

and NOT like this:

.. code-block:: ruby

  search(:node, 'run_list:recipe[foo::bar]') do |matching_node|
    puts matching_node.to_s
   end

If metacharacters are not escaped properly, the quality of the search query may be compromised.