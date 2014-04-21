.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``artifact_id``
     - The identifier for an artifact. If this value is not specified, the name of the resource will be used as the identifier.
   * - ``dest``
     - The folder in which the |jar| file and its dependencies will be located.
   * - ``group_id``
     - The identifier for the group.
   * - ``mode``
     - The octal mode that is passed to |chmod|. If the value is specified as a quoted string, it will work exactly as if the ``chmod`` command was passed. If the value is specified as an integer, prepend a zero (``0``) to the value to ensure it is interpreted as an octal number. For example, to assign read, write, and execute rights for all users, use ``0777`` or ``'777'``; for the same rights, plus the sticky bit, use ``01777`` or ``'1777'``. Default value: ``0644``.
   * - ``owner``
     - The owner of an artifact file. Default value: ``root``.
   * - ``packaging``
     - The package type. Default value: ``jar``.
   * - ``repositories``
     - An array of |apache maven| repositories. Default value: ``["http://repo1.maven.apache.org/maven2"]``.
   * - ``version``
     - The version of an artifact.
