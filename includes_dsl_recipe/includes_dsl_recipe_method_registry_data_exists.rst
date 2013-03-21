.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``registry_data_exists?`` method can be used in a recipe to find out if a |windows| registry key contains the specified data. 

.. note:: |note registry_key not_if only_if|

The syntax for the ``registry_data_exists?`` method is as follows:

.. code-block:: ruby

   registry_data_exists?(
     KEY_PATH, 
     { :name => "NAME", :type => TYPE, :data => VALUE }, 
     ARCHITECTURE
   )

where 

* ``KEY_PATH`` is the path to the registry key. |key_name resource registry_key hives|
* ``{ :name => "NAME", :type => TYPE, :data => VALUE }`` is a hash that contains the name, type, and value of the registry setting
* |values resource registry_key types|
* ``ARCHITECTURE`` is one of the following values: ``:x86_64``, ``:i386``, or ``:machine``. |architecture resource registry_key machine|

This method will return ``true`` or ``false``. 

.. note:: |note registry_key architecture|




