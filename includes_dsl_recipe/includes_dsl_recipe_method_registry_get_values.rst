.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``registry_get_values`` method can be used in a recipe to get the values (name, type, and data) for a |windows| registry key.

.. note:: This method can be used in recipes and from within the ``not_if`` and ``only_if`` blocks in resources. This method is not designed to create or modify a registry setting. If a registry setting needs to be modified, use the |resource windows_registry| resource.

The syntax for the ``registry_get_values`` method is as follows:

.. code-block:: ruby

   registry_get_values(key_path, architecture = :machine)

where ``"key_path"`` is the path to the registry key and ``architecture`` is one of the following values: ``:x86_64``, ``:i386``, or ``:machine``.

For example, the following will xxxxx:

.. code-block:: ruby

   xxxxx




