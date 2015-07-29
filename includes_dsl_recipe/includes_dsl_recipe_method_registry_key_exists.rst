.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the ``registry_key_exists?`` method to find out if a |windows| registry key exists.

.. note:: .. include:: ../../includes_notes/includes_notes_registry_key_not_if_only_if.rst

The syntax for the ``registry_key_exists?`` method is as follows:

.. code-block:: ruby

   registry_key_exists?(KEY_PATH, ARCHITECTURE)

where:

* ``KEY_PATH`` is the path to the registry key. |key_name resource registry_key hives|
* ``ARCHITECTURE`` is one of the following values: ``:x86_64``, ``:i386``, or ``:machine``. |architecture registry_key machine|

This method will return ``true`` or ``false``. 

.. note:: .. include:: ../../includes_notes/includes_notes_registry_key_architecture.rst
