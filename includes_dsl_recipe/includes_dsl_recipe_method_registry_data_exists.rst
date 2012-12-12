.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``registry_data_exists?`` method can be used in a recipe to find out if a |windows| registry key contains data. 

.. note:: This method can be used in recipes and from within the ``not_if`` and ``only_if`` blocks in resources. This method is not designed to create or modify a registry setting. If a registry setting needs to be modified, use the |resource windows_registry| resource.

The syntax for the ``registry_data_exists?`` method is as follows:

.. code-block:: ruby

   registry_data_exists?(
     key_path, 
     value => { :name => "name", :type => :type, :value => value }, 
     architecture = :machine
   )

where ``"key_path"`` is the path to the registry key and ``value`` is a hash that contains the name, type, and value of the registry setting.

For example, the following will xxxxx:

.. code-block:: ruby

   xxxxx




