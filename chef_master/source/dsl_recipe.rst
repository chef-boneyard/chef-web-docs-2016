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

Because the |dsl recipe| is a |ruby| DSL, then anything that can be done using |ruby| can also be done in a recipe, including ``if`` and ``case`` statements, using the ``include?`` |ruby| method, including recipes in recipes, and checking for dependencies.

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Approach
     - Description
   * - :doc:`dsl_recipe_use_ruby`
     - Common Ruby techniques can be used with the Recipe DSL methods, including ``if`` and ``case`` statements.
   * - :doc:`dsl_recipe_include_recipes`
     - A recipe can include one (or more) recipes found in other cookbooks by using the ``include_recipe`` keyword. 

.. include:: ../../includes_dsl_recipe/includes_dsl_recipe_method.rst

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Methods
     - Description
   * - :doc:`dsl_recipe_method_attribute`
     - Use in a recipe to include an attribute.
   * - :doc:`dsl_recipe_method_data_bag`
     - Use in a recipe to include a data bag or data bag item.
   * - :doc:`dsl_recipe_method_platform`
     - Use in a recipe to check for the platform.
   * - :doc:`dsl_recipe_method_platform_family`
     - Use in a recipe to check for the platform family.
   * - :doc:`dsl_recipe_method_resources`
     - Use in a recipe to include a resource.
   * - :doc:`dsl_recipe_method_search`
     - Use in a recipe to include search results.
   * - :doc:`dsl_recipe_method_tag`
     - Use in a recipe to use and apply tags.
   * - :doc:`dsl_recipe_method_value_for_platform`
     - Use in a recipe to check for a value for a platform.
   * - :doc:`dsl_recipe_method_value_for_platform_family`
     - Use in a recipe to check for a value for a platform family.

.. toctree::
   :hidden:

   dsl_recipe_use_ruby
   dsl_recipe_include_recipes
   dsl_recipe_method_attribute
   dsl_recipe_method_data_bag
   dsl_recipe_method_platform
   dsl_recipe_method_platform_family
   dsl_recipe_method_resources
   dsl_recipe_method_search
   dsl_recipe_method_tag
   dsl_recipe_method_value_for_platform
   dsl_recipe_method_value_for_platform_family



