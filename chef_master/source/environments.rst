=====================================================
About Environments
=====================================================

.. include:: ../../includes_environment/includes_environment.rst

The _default Environment
=====================================================
.. include:: ../../includes_environment/includes_environment_default.rst

Environment Attributes
=====================================================
.. include:: ../../includes_environment/includes_environment_attribute.rst

.. note:: |note see_attributes_overview|

Attribute Types
-----------------------------------------------------
.. include:: ../../includes_environment/includes_environment_attribute_type.rst

Attribute Persistence
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_persistence.rst

Attribute Precedence
-----------------------------------------------------
.. include:: ../../includes_node/includes_node_attribute_precedence.rst

Whitelist Attributes
+++++++++++++++++++++++++++++++++++++++++++++++++++++
.. include:: ../../includes_node/includes_node_attribute_whitelist.rst

Environment Formats
=====================================================
.. include:: ../../includes_environment/includes_environment_format.rst

|ruby| DSL
-----------------------------------------------------
.. include:: ../../includes_ruby/includes_ruby.rst

.. include:: ../../includes_environment/includes_environment_format_ruby.rst

|json|
-----------------------------------------------------
.. include:: ../../includes_environment/includes_environment_format_json.rst

Create Environments
=====================================================
.. include:: ../../includes_environment/includes_environment_create.rst

Manage Environments
=====================================================
.. include:: ../../includes_environment/includes_environment_manage.rst

Find Environment from Recipe
-----------------------------------------------------
Use the following syntax to find the current environment from a recipe:

.. code-block:: ruby

   node.environment()

or:

.. code-block:: ruby

   node.chef_environment


Save in a Data Bag
-----------------------------------------------------
.. include:: ../../includes_environment/includes_environment_manage_save_in_data_bag.rst

Override Attributes in Roles
-----------------------------------------------------
.. include:: ../../includes_environment/includes_environment_manage_override_in_roles.rst

Set for a Node
-----------------------------------------------------
.. include:: ../../includes_environment/includes_environment_manage_set_on_node.rst

.. 
.. ``chef_environment``
.. +++++++++++++++++++++++++++++++++++++++++++++++++++++
.. Use the ``chef_environment`` method to load the node object, and then set an environment during a |chef client| run. Because the environment is set during the |chef client| run, the changes will be applied during the next |chef client| run.
.. 
.. For example:
.. 
.. .. code-block:: ruby
.. 
..    def self.chef_environment(node, chef_env)
..      begin
..        Chef::Environment.load(chef_env)   
..      node.chef_environment(chef_env)
..    end
..    
..    ...
..    
..      def set_chef_environment(chef_env)
..        Canaria.chef_environment(node, chef_env)
..      end
..    
..    end
.. 
.. The complete example is `located in the canaria-cookbook <https://github.com/ryancragun/canaria-cookbook/blob/master/libraries/canaria.rb>`__.
.. 

Set using |chef solo|
-----------------------------------------------------
.. include:: ../../includes_chef_solo/includes_chef_solo_environments.rst

Move Nodes
-----------------------------------------------------
.. include:: ../../includes_environment/includes_environment_manage_move_nodes_between.rst

Search Environments
-----------------------------------------------------
.. include:: ../../includes_search/includes_search_environment.rst



