.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``registry_get_subkeys`` method can be used in a recipe to get a list of sub-keys that are present for a |windows| registry setting. 

.. note:: |note registry_key not_if only_if|

The syntax for the ``registry_get_subkeys`` method is as follows:

.. code-block:: ruby

   subkey_array = registry_get_subkeys(KEY_PATH, ARCHITECTURE)

where 

* ``KEY_PATH`` is the path to the registry key
* ``ARCHITECTURE`` is one of the following values: ``:x86_64``, ``:i386``, or ``:machine``

The results of ``registry_get_subkeys`` is an array of sub-keys.

.. note:: |note registry_key architecture|




