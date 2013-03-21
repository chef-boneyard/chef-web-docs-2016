.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``registry_get_values`` method can be used in a recipe to get the values (name, type, and data) for a |windows| registry key.

.. note:: |note registry_key not_if only_if|

The syntax for the ``registry_get_values`` method is as follows:

.. code-block:: ruby

   subkey_array = registry_get_values(KEY_PATH, ARCHITECTURE)

where 

* ``KEY_PATH`` is the path to the registry key. |key_name resource registry_key hives|
* ``ARCHITECTURE`` is one of the following values: ``:x86_64``, ``:i386``, or ``:machine``. |architecture resource registry_key machine|

The results of ``registry_get_values`` is an array of values.

.. note:: |note registry_key architecture|




