.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``homebrew_user``
     - |name homebrew_user| The |chef client|, by default, will attempt to execute a |homebrew| command as the owner of ``/usr/local/bin/brew``. If that executable does not exist, the |chef client| will attempt to find the user by executing ``which brew``. If that executable cannot be found, the |chef client| will print an error message: ``Could not find the "brew" executable in /usr/local/bin or anywhere on the path.``. Use the ``homebrew_user`` attribute to specify the |homebrew| owner for situations where the |chef client| cannot automatically detect the correct owner.
   * - ``options``
     - |command options|
   * - ``package_name``
     - |name package| Default value: the ``name`` of the resource block. |see syntax|
   * - ``provider``
     - Optional. |provider resource_parameter| |see providers|
   * - ``response_file``
     - Optional. |response_file|
   * - ``source``
     - Optional. |source resource package|
   * - ``version``
     - |version package|
