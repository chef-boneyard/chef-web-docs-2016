.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``directives``
     - Extra extension directives (or settings) for a |pecl|. On most platforms, these directives are rendered into the extension's .ini file.
   * - ``options``
     - One (or more) additional options that are passed to the command.
   * - ``package_name``
     - The name of the package.
   * - ``preferred_state``
     - By default, |pear| only installs stable packages. Packages can be installed in various non-stable states: ``devel``, ``alpha`` or ``beta``. Default value: ``stable``.
   * - ``version``
     - The version of a package to be installed or upgraded.
