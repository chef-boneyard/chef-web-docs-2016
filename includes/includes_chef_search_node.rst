.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.



A node can be searched from a recipe by using the following syntax::

   search(:node, "key:attribute")

A wildcard can be used to replace characters within the search query.

|chef| saves expanded lists of roles (all of the roles that apply to a node, including nested roles) and recipes to the role and recipe attributes on a node. This allows searching within nodes that run a given recipe, even if that recipe is included by a role.

.. note:: The ``recipes`` field is updated each time the |chef client| is run; changes to a run-list will not affect ``recipes`` until the next time the |chef client| is run on the node.

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Node Location
     - Description
   * - In a specified recipe
     - To find a node with a specified recipe in the run-list, search within the ``run_list`` field (and escaping any special characters with the slash symbol) using the following syntax::
       
         search(:node, 'run_list:recipe\[foo\:\:bar\]')
        
       where ``recipe`` (singular!) indicates the top-level run-list. Variables can be interpolated into search strings using the |ruby| alternate quoting syntax::
       
          search(:node, %Q{run_list:"recipe[#{the_recipe}]"} )
   * - In an expanded run-list
     - To find a node with a recipe in an expanded run-list, search within the ``recipes`` field (and escaping any special characters with the slash symbol) using the following syntax::
       
          recipes:RECIPE_NAME
       
       where ``recipes`` (plural!) indicates to search within an expanded run-list. 

If you just want to use each result of the search and don't care about the aggregate result you can provide a code block to the search method. Each result will be passed to the block in turn::

   # Print every node matching the search pattern
   search(:node, "*:*") do |matching_node|
     puts matching_node.to_s
   end
