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

where ``"key_path"`` is the path to the registry key, ``value`` is a hash that contains the name, type, and value of the registry setting, and ``architecture`` is one of the following values: ``:x86_64``, ``:i386``, or ``:machine``. 

.. note:: The ``architecture`` attribute should only specify ``:x86_64`` or ``:i386`` when it is necessary to write 32-bit (``:i386``) or 64-bit (``:x86_64``) values on a 64-bit machine. ``architecture`` will default to ``:machine`` unless a specific value is given.

For example, the following will xxxxx:

.. code-block:: ruby

   xxxxx




