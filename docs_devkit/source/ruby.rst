=====================================================
Chef Style Guide
=====================================================

.. include:: ../../includes_ruby/includes_ruby.rst

.. warning:: This is a drafty version of a style guide for Chef, specifically about using Ruby and cookbook/recipe authoring.

Basics
=====================================================
This section covers the basics of |ruby|.

Verify Syntax
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_basics_check_syntax.rst

Comments
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_basics_comment.rst

Local Variables
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_basics_variable_local.rst

Math
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_basics_math.rst

Strings
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_basics_strings.rst

|ruby| in Strings
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ruby/includes_ruby_style_basics_string_embed_ruby.rst

Truths
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_basics_truths.rst

Untruths
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ruby/includes_ruby_style_basics_untruths.rst

Convert Truths
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ruby/includes_ruby_style_basics_convert_truths.rst

Arrays
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_basics_array_lists.rst

Whitespace Arrays
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ruby/includes_ruby_style_basics_array_shortcut.rst

Hash
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_basics_hash.rst

Regular Expressions
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_basics_regular_expressions.rst

Statements
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_basics_statement.rst

if
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ruby/includes_ruby_style_basics_statement_if.rst

not_if
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ruby/includes_ruby_style_basics_statement_not_if.rst

case
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_ruby/includes_ruby_style_basics_statement_case.rst

Call a Method
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_basics_method_call.rst

Define a Method
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_basics_method_define.rst

Ruby Class
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_basics_class_recipe.rst

Include a Class
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_basics_class_include.rst

Include a Parameter
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_basics_parameter_include.rst

Log Entries
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_basics_chef_log.rst

The following examples show using ``Chef::Log`` entries in a recipe.

.. include:: ../../step_ruby/step_ruby_class_chef_log_fatal.rst

.. include:: ../../step_ruby/step_ruby_class_chef_log_multiple.rst

Good Patterns
=====================================================
This section covers best practices for cookbook and recipe authoring.

Git Etiquette
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_patterns_git_etiquette.rst

Cookbook Naming
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_patterns_cookbook_naming.rst

Cookbook Versioning
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_patterns_cookbook_versioning.rst

Good Cookbook Patterns
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_patterns_cookbook_good_examples.rst

Naming
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_patterns_system_and_component_naming.rst

Default Recipe
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_patterns_default_recipe.rst

Parameter Order
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_patterns_resource_parameter_order.rst

File Modes
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_patterns_file_modes.rst

Always Specify Action
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_patterns_always_specify_action.rst

Symbols or Strings?
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_patterns_symbols_vs_strings.rst

String Quoting
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_patterns_string_quoting.rst

Shelling Out
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_patterns_shelling_out.rst

Constructs to Avoid
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_patterns_constructs_to_avoid.rst

Recipes
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_patterns_recipes.rst

Bad Patterns
=====================================================
This section covers things that should be avoided when authoring cookbooks and recipes.

node.set
-----------------------------------------------------

Lamont Granquist, quote: 

"Also you don't want to use node.set, you want to use node.default or maybe node.override if you have to.  When you use node.set that is an alias for node.normal which has the side effect of persisting data permanently in the node object.  If you delete those lines, you'll find the attributes are still set, which can be highly confusing.  The normal and override attribute precedence levels are actually wiped at the start of the chef run and re-built completely by your code which is what you actually want.  You should only use 'node.set' or 'node.normal' if you're doing something like generating a password for a database on the first run and you need to remember that (and even there you should probably use a data bag). And one last thing is that its better to move those kinds of settings into an attributes file if at all possible and not setattributes in recipe code like that."


Use the |chef dk_title|
=====================================================
This section covers best practices for cookbook and recipe authoring.

FoodCritic Linting
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby_style_tools_foodcritic_linting.rst

More about Ruby
=====================================================
.. include:: ../../includes_ruby/includes_ruby_style_more_info.rst

