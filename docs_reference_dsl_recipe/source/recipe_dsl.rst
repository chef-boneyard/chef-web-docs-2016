=====================================================
Recipe DSL
=====================================================
 
.. include:: ../../swaps/swap_desc_a.txt
.. include:: ../../swaps/swap_desc_b.txt
.. include:: ../../swaps/swap_desc_c.txt
.. include:: ../../swaps/swap_desc_d.txt
.. include:: ../../swaps/swap_desc_e.txt
.. include:: ../../swaps/swap_desc_f.txt
.. include:: ../../swaps/swap_desc_g.txt
.. include:: ../../swaps/swap_desc_h.txt
.. include:: ../../swaps/swap_desc_i.txt
.. include:: ../../swaps/swap_desc_j.txt
.. include:: ../../swaps/swap_desc_k.txt
.. include:: ../../swaps/swap_desc_l.txt
.. include:: ../../swaps/swap_desc_m.txt
.. include:: ../../swaps/swap_desc_n.txt
.. include:: ../../swaps/swap_desc_o.txt
.. include:: ../../swaps/swap_desc_p.txt
.. include:: ../../swaps/swap_desc_q.txt
.. include:: ../../swaps/swap_desc_r.txt
.. include:: ../../swaps/swap_desc_s.txt
.. include:: ../../swaps/swap_desc_t.txt
.. include:: ../../swaps/swap_desc_u.txt
.. include:: ../../swaps/swap_desc_v.txt
.. include:: ../../swaps/swap_desc_w.txt
.. include:: ../../swaps/swap_desc_x.txt
.. include:: ../../swaps/swap_desc_y.txt
.. include:: ../../swaps/swap_desc_z.txt
.. include:: ../../swaps/swap_http.txt
.. include:: ../../swaps/swap_names.txt
.. include:: ../../swaps/swap_notes.txt


.. include:: ../../includes_dsl_recipe/includes_dsl_recipe.rst

Work with the Recipe DSL
=====================================================
Because the |dsl recipe| is a |ruby| DSL, then anything that can be done using |ruby| can also be done in a recipe, including ``if`` and ``case`` statements, using the ``include?`` |ruby| method, including recipes in recipes, and checking for dependencies.

Use Ruby
-----------------------------------------------------
Common |ruby| techniques can be used with the |dsl recipe| methods.

if Statements
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ruby/includes_ruby_statement_if.rst

case Statements
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ruby/includes_ruby_statement_case.rst

include? Method
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ruby/includes_ruby_method_include.rst

Array Shortcut Syntax
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ruby/includes_ruby_shortcut_array.rst

Include Recipes
-----------------------------------------------------
.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_include_in_recipe.rst

Reload Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file_reload_from_recipe.rst

Accessor Methods
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_cookbooks/includes_cookbooks_attribute_file_methods_accessor.rst


Recipe DSL Methods
=====================================================
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method.rst

attribute?
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_attribute.rst

data_bag, data_bag_item
-----------------------------------------------------
.. include:: ../../includes_data_bag/includes_data_bag.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_data_bags.rst

platform?
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_platform.rst

platform_family?
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_platform_family.rst

resources
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_resources.rst

search
-----------------------------------------------------
.. include:: ../../includes_search/includes_search.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_search_indexes.rst

tag, tagged?, and untag
-----------------------------------------------------
.. include:: ../../includes_chef/includes_chef_tags.rst

.. include:: ../../includes_cookbooks/includes_cookbooks_recipe_tags.rst

value_for_platform
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_value_for_platform.rst

value_for_platform_family
-----------------------------------------------------
.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method_value_for_platform_family.rst



    
  