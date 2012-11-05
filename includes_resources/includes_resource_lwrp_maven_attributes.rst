.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``:artifact_id``
     - The identifier for an artifact. If this value is not specified, the name of the resource will be used as the identifier.
   * - ``:dest``
     - The folder in which the |jar| file and its dependencies will be located.
   * - ``:group_id``
     - The group identifier for an artifact.
   * - ``:mode``
     - An integer value for file permissions. Default value: ``0644``.
   * - ``:owner``
     - The owner of the artifact files. Default value: ``root``.
   * - ``:packaging``
     - The type of package. Default value: ``jar``.
   * - ``:repositories``
     - An array of |apache maven| repositories. Default value: ``["http://repo1.maven.apache.org/maven2"]``.
   * - ``:version``
     - The version of an artifact.
