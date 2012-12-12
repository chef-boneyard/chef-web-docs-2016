.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``registry_get_subkeys`` method can be used in a recipe to get a list of sub-keys that are present for a |windows| registry setting. 

.. note:: This method can be used in recipes and from within the ``not_if`` and ``only_if`` blocks in resources. This method is not designed to create or modify a registry setting. If a registry setting needs to be modified, use the |resource windows_registry| resource.

The syntax for the ``registry_get_subkeys`` method is as follows:

.. code-block:: ruby

   registry_get_subkeys(key_path, architecture = :machine)

where ``"key_path"`` is the path to the registry key.

For example, the following will xxxxx:

.. code-block:: ruby

   xxxxx




